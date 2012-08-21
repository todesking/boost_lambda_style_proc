# BoostLambdaStyleProc

This gem support to write a proc with Boost::Lambda style.

## Installation

Add this line to your application's Gemfile:

    gem 'boost_lambda_style_proc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boost_lambda_style_proc

## Usage

  # Without the gem
  [1, 2, 3].map {|x| x * 2}

  # With the gem
  [1, 2, 3].map &(_1 * 2)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
