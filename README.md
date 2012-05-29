# yard-dm

* [Source](https://github.com/postmodern/yard-dm)
* [Issues](https://github.com/postmodern/yard-dm/issues)
* [Email](mailto:postmodern.mod3 at gmail.com)

## Description

A YARD plugin for parsing DataMapper model syntax.

Once yard-dm is installed, YARD will automatically load the plugin when ever
the `yardoc` utility is ran on a project.

## Features

Parses the following statements:

    property :name, Type

    has n, :things

    has 1, :thing

    has 0..n, :things

    has 1..n, :things

    has 2..5, :things

    belongs_to :stuff

## Requirements

* [yard](http://yardoc.org/) ~> 0.4

## Install

    $ gem install yard-dm

## License

See {file:LICENSE.txt} for license information.
