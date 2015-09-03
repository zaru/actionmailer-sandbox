# Actionmailer::Sandbox

This Gem is forced to change the e-mail destination ActionMailer.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'actionmailer-sandbox'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install actionmailer-sandbox

## Usage

It will add to Rails.root/initializers/actionmailer_sandbox.rb ( default `sandbox_email` is nil )

```
ActionMailer::Sandbox.configure do |config|
  if Rails.env.development?
    config.sandbox_email = 'your-name@example.com'
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/actionmailer-sandbox.

