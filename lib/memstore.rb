require 'awesome_print'
require 'httparty'
require 'json'

class Memstore
  def initialize(tenant:, api_key:)
    self.api_key = api_key
    self.tenant = tenant
  end

  attr_accessor :api_key, :tenant

  def create_user(name:, username:, password:)
    if list_users.any? { |r| r['username'] == username }
      puts 'User already exists.. skipping create..'
      return
    end

    request('memstore.user.create',
            query: { name: name, username: username, password: password, enabled: 1 })
  end

  def list_users
    request('memstore.user.list')
  end

  private

  def request(command, opts = {})
    opts[:query] ||= {}
    opts[:query][:api_key] = api_key

    response = HTTParty.get("https://api.memset.com/v1/json/#{command}/#{tenant}", opts)

    ap(JSON.parse(response.body)) && raise unless response.success?

    response
  end
end
