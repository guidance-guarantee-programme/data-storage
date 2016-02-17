# Data - Storage

[![Build Status](https://travis-ci.org/guidance-guarantee-programme/data-storage.svg)](https://travis-ci.org/guidance-guarantee-programme/data-storage)

Provisioning of [Memstore] storage for [Pension Wise] data.


## Prerequisites

* [Bundler]
* [Git]
* [Memstore Cloud Storage][Memstore]
* [Ruby 2.3.0][Ruby]


## Installation

Clone the repository:

```sh
$ git clone https://github.com/guidance-guarantee-programme/data-storage.git
```

Setup the tool:

```sh
$ ./bin/setup
```


## Usage

To run the tool:

```sh
$ cat /path/to/credentials.csv | ./bin/data-storage-setup \
    --api-key="abc123" \
    --auth-url="https://auth.storage.memset.com/v2.0/tokens" \
    --tenant="acme" \
    --username="test" \
    --password="t3st1ng"
```


## Contributing

Please see the [contributing guidelines](/CONTRIBUTING.md).

[bundler]: http://bundler.io
[git]: http://git-scm.com
[memstore]: https://www.memset.com/cloud/storage 
[pension wise]: https://www.pensionwise.gov.uk
[ruby]: http://www.ruby-lang.org/en
