# [Discontinued] Freegeoip Ruby

[![Gem Version](https://badge.fury.io/rb/freegeoip-api.svg)](https://badge.fury.io/rb/freegeoip-api)

A Ruby library for the [Freegeoip API](https://freegeoip.app).
Since freegeoip.app is no longer functional this gem is also none functional.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'freegeoip-api'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install freegeoip-api
```

## Usage

Anywhere in your code

```ruby
require 'freegeoip'

Freegeoip.get('google.com')
 => #<Freegeoip::Response:0x007f9552bb9ba0
     @remote="google.com",
     @ip="172.217.7.14",
     @country_code="US",
     @country_name="United States",
     @region_code="CA",
     @region_name="California",
     @city="Mountain View",
     @zip_code="94043",
     @time_zone="America/Los_Angeles",
     @latitude=37.4192,
     @longitude=-122.0574,
     @metro_code=807>
```

In the command line

```bash
$ freegeoip get google.com
Searching for: google.com
------------------------
IP: 172.217.5.14
Country code: US
Country name: United States
Region code: CA
Region name: California
City: Mountain View
ZIP Code: 94043
Time zone: America/Los_Angeles
Latitude: 37.4192
Longitude: -122.0574
Metro code: 807
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub.
This project is intended to be a safe, welcoming
space for collaboration, and contributors are
expected to adhere to basic human decency.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Credits

> This codebase is very much a modified version of <https://github.com/TheNaoX/freegeoip>
