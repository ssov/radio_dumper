# RadioDumper

Radio recorder

## Installation

Add this line to your application's Gemfile:

    gem 'radio_dumper'

And then execute:

    $ bundle

Or install it yourself as:

    $ rake build
    $ rake install

## Usage(Example)

    $ radio_dumper -p radiko -t 30 -d ~/ --channel TBS
    $ radio_dumper -p ag -t 30 -d .
    $ radio_dumper -p nhk1 -t 3600 -d .
    $ radio_dumper -p nhk2 -t 1234 -d ~/
    $ radio_dumper -p nhkfm -t 1800 -d ~/

## Dependencies

* rtmpdump
* swftools

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
