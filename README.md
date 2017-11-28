# Cnab

[![Gem Version](https://badge.fury.io/rb/cnab.svg)](https://badge.fury.io/rb/cnab) [![Build Status](https://travis-ci.org/plribeiro3000/cnab.svg?branch=master)](https://travis-ci.org/plribeiro3000/cnab) [![Coverage Status](https://coveralls.io/repos/github/plribeiro3000/cnab/badge.svg?branch=master)](https://coveralls.io/github/plribeiro3000/cnab?branch=master) [![Maintainability](https://api.codeclimate.com/v1/badges/b609fde34c18e9c6c71d/maintainability)](https://codeclimate.com/github/plribeiro3000/cnab/maintainability)

Gem used to parse return from Brazil banks in format of cnab files.
Right now it has support only for Segmento T and Segmento U. By default, it will parse based on the version 08.7.

## Installation

Add this line to your application's Gemfile:

    gem 'cnab'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cnab

## Usage

```ruby
cnab = Cnab.parse('path/to/your/file')
```

This method will return the file parsed in objects.

If you need to merge the segments T and U, just pass true as the optional parameter:

```ruby
cnab = Cnab.parse('path/to/your/file', true)
```

If you need to parse a cnab file of another version, just pass it as the second optional parameter:

```ruby
cnab = Cnab.parse('path/to/your/file', true, 'santander')
```

## TODO

* Add support for another type of segments
* Refactor classes and mix headers and trailers

## Mantainers
[@plribeiro3000](https://github.com/plribeiro3000)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request