# WordGenerator

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/word_generator`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'word_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_generator

## Usage


To execute on console

`irb -Ilib -rword_generator`

For static number

run `WordGenerator::Combinator.new(6686787825).generate`

To read input from console

run `WordGenerator::NumberToWord.new.combinatons`

Output with time
```
2.6.0 :001 > WordGenerator::Combinator.new(6686787825).generate
Time 0.31345438957214355
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :002 > WordGenerator::Combinator.new(6686787825).generate
Time 0.28060483932495117
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :003 > WordGenerator::Combinator.new(6686787825).generate
Time 0.280820369720459
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :004 > WordGenerator::Combinator.new(6686787825).generate
Time 0.2726399898529053
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :005 > WordGenerator::Combinator.new(6686787825).generate
Time 0.24427533149719238
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :006 > WordGenerator::Combinator.new(6686787825).generate
Time 0.2448413372039795
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :007 > WordGenerator::Combinator.new(6686787825).generate
Time 0.242051362991333
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :008 > WordGenerator::Combinator.new(2282668687).generate
Time 0.28045105934143066
 => [["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["catamounts"]]
2.6.0 :009 >

```
For Benchmark

```ruby
  require 'benchmark'

  Benchmark.bm do |x|
    x.report {WordGenerator::Combinator.new(6686787825).generate}
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/word_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the WordGenerator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/word_generator/blob/master/CODE_OF_CONDUCT.md).
