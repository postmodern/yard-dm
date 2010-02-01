# yard-dm

* http://github.com/postmodern/yard-dm/
* http://github.com/postmodern/yard-dm/issues
* Postmodern (postmodern.mod3 at gmail.com)

## DESCRIPTION:

A YARD plugin for parsing DataMapper model syntax.

Once yard-dm is installed, YARD will automatically load the plugin when ever
the `yardoc` utility is ran on a project.

## FEATURES:

* Parses the following statements:
  * Properties:

      property :name, Type

  * Has relationships:

      has n, :things

      has 1, :thing

      has 0..n, :things

      has 1..n, :things

      has 2..5, :things

  * Belongs to relationships:

      belongs_to :stuff

## REQUIREMENTS:

* [yard](http://yardoc.org/) >= 0.4.0

## INSTALL:

    $ sudo gem install yard-dm

## LICENSE:

(The MIT License)

Copyright (c) 2010 Hal Brodigan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.