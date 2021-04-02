[gem]: https://rubygems.org/gems/jets
[actions]: https://github.com/getjets/jets/actions

# jets

[![CI Status](https://github.com/getjets/jets/workflows/ci/badge.svg)][actions]

`jets` provides afterburners for your Ruby on Rails app development.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "get-jets"
```

or to your engine's Gemfile and `.gemspec`:

```ruby
# Gemfile
gem "get-jets"

# .gemspec
s.add_development_dependency "jets-rubocop"
```

## Supported Ruby versions

This library officially supports the following Ruby versions:

* MRI >= "3.0"

## License

See `LICENSE` file.

## Credits

Original inspiration for the Jets project comes from [Vladimir Dementyev's](https://github.com/palkan)
excellent presentation on component-based Rails monolith applications and his [Engems](https://github.com/palkan/engems)
showcase repository.

Code:
- [Engems](https://github.com/palkan/engems)

Talks:
- [Between monoliths and microservices](https://noti.st/palkan/VWPOSd/between-monoliths-and-microservices)
