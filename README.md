# UsefulDuration

Finally - a useful way of measuring time in your applications.

## Installation

Add this line to your application's Gemfile:

    gem 'useful_duration'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install useful_duration

## Usage

  > require 'useful_duration'

  > include UsefulDuration

  > 10.in_a_gadda_da_vidas.ago
  => 2013-04-18 11:25:56 -0400

  > 2.bravehearts.from_now
   => 2013-04-18 20:10:45 -0400

## Defining Your Own Duration

  > require 'useful_duration'

  > include UsefulDuration

  > useful_duration :fortnights, 1209600

  > 1.fortnight.from_now
  => 2013-07-21 08:47:37 -0400

## Dependencies

This requires ActiveSupport to play nicely with ActiveSupport duration.
It was written against 3.2.13 and hasn't been regression tested against other versions.

## Contributing

Is there a unit of time you'd like to see?

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
