optparse-pathname
=================

This gem allow you convert command line options to `Pathname` objects
when parsing them using `OptionParser`.

It's similar to `optparse/uri`, a Ruby standard bundled library.

Installation
------------

Add this line to your application's Gemfile:

    gem 'optparse-pathname'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install optparse-pathname

Usage
-----

Your command file(bin/my-command here):

    #!/usr/bin/env ruby
    require 'optparse/pathname'
    
    options = {}
    parser = OptionParser.new
    parser.on '-f', '--file=FILE', Pathname do |path|
      unless path.file? # methods of Pathname are available
        warn 'ERROR: `file` option must be an existing file'
        raise OptionParser::InvalidArgument
      end
      options[:path] = path
    end
    parser.parse!
    
    puts options[:path].class #=> "Pathname"
    puts options[:path].expand_path # methods of Pathname are available

You will see like this:

    $ bundle exec my-command --file=./bin/my-command
    Pathname
    path/to/current/bin/my-command

Or like this:

    $ bundle exec bin/my-command --file=.
    ERROR: `file` option must be an existing file
    bin/my-command:9:in `block in <main>': invalid argument: --file=. (OptionParser::InvalidArgument)
    	from bin/my-command:13:in `<main>'

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Merge Request
