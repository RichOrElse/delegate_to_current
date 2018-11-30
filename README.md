# DelegateToCurrent

Wraps singleton objects and delegate calls to it's 'current' method. For Rails applications version 5.1 and above.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'delegate_to_current', github: 'RichOrElse/delegate_to_current'
```

And then execute:

    $ bundle

## Usage

Delegate to `Date.current`.

```ruby
Today = DelegateToCurrent[::Date]

start_date = Today.beginning_of_week
```

Delegate to `Time.current`.

```ruby
Now = DelegateToCurrent[::Time]

ends_at = Now.end_of_day
```

Add to Minitest helper.

```ruby
class ActiveSupport::TestCase
  Must = DelegateToCurrent[::MiniTest::Spec]

  module MustInclude
    refine Array do
      def must_include(*members)
        members.each do |member|
          Must.assert_includes self, member
        end
      end

      alias_method :wont_include,
      def must_exclude(*members)
        members.each do |member|
          Must.refute_includes self, member
        end
      end
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RichOrElse/delegate_to_current.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
