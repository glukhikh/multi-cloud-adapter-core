# Multicloud::Core

This is a gem you should use when write a MultiCloud adapter.
It includes: error classes, base adapter (interface), entities, and other needed things for writing an adapter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'multicloud-core'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multicloud-core

## Usage

Implements your adapter class in your gem:

```ruby
class YourAdapter < Multicloud::Core::BaseAdapter
    # @todo Implements all methods
end
```

Usage of adapter must look like:

```ruby
# Create the adapter the first time (without access_token)
adapter = YourAdapter.new
request_credentionals = adapter.auth(username: 'username', password: 'super_secret_password')
# Save your request_credentionals if you want
p adapter.disk_info
# Result:
# => #<DiskInfo:0x...> @total=1024, @free=24, @used=1000
```

```ruby
# Create the adapter with request_credentionals
adapter = YourAdapter.new(request_credentionals)
# You can skip .auth method
p adapter.disk_info
# Result:
# => #<DiskInfo:0x...> @total=1024, @free=24, @used=1000
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/glukhikh/multicloud-core.
