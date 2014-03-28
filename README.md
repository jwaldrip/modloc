# Modloc

[![Version](http://allthebadges.io/jwaldrip/modloc/badge_fury.png)](http://allthebadges.io/jwaldrip/modloc/badge_fury)
[![Dependencies](http://allthebadges.io/jwaldrip/modloc/gemnasium.png)](http://allthebadges.io/jwaldrip/modloc/gemnasium)
[![Build Status](http://allthebadges.io/jwaldrip/modloc/travis.png)](http://allthebadges.io/jwaldrip/modloc/travis)
[![Coverage](http://allthebadges.io/jwaldrip/modloc/coveralls.png)](http://allthebadges.io/jwaldrip/modloc/coveralls)
[![Code Climate](http://allthebadges.io/jwaldrip/modloc/code_climate.png)](http://allthebadges.io/jwaldrip/modloc/code_climate)

--

Source locations for modules and classes in your app.

**Works in Ruby >= 2.0.0**

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'modloc'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install modloc
```

## Usage

Just use the source_locations method on any class or module.

```ruby
ActiveSupport.source_locations
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/modloc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
