# Geocaching

This gem provides a toolset of functions and methods which aids in doing calculation needed for geocaching.

## Installation

Add this line to your application's Gemfile:

    gem 'geocaching'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geocaching

## Usage

The preferred way of using this gem is to combine it with an `xmpfilter` integration inside your editor.
* create a new ruby file for a cache calculation
* `require 'geocaching'`
* transform cache calculation into ruby
* execute and update ruby markers with help of `xmpfilter`

## Example

    require 'geocaching'

    # some values to find
    a = 2377
    b = 4489

    A = a.crossfoot          # => 19
    B = b.iterated_crossfoot # => 7
    C = "SOMEWORD".to_a1b2   # => [19, 15, 12, 5, 23, 15, 18, 4]
    C = C.sum                # => 111
    # ...

    # enter formula as given in cache description
    "N 53° #{A}.#{E+F*2}#{D-100}"
    # =>
    "E 10° #{G}.#{C}"
    # =>

Run it either using `xmpfilter` to see results aded to the file or put `print`s and run it manually.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Author

Karsten Silkenbäumer

[![endorse](http://api.coderwall.com/ksi/endorsecount.png)](http://coderwall.com/ksi)
