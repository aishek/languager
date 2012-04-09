# Introduction

Languager extends string to translate it to specified language by keyboard layout (like Punto Switcher). Currently supporting only translation from english to russian. It will be useful to autocorrect user's input in wrong keyboard layout in search queries.

This document describes installation and usage of languager.

Please report issues on [Github](https://github.com/aishek/languager/issues).

For feedback, suggestions, etc. write to <aishek@gmail.com>.

[![Build Status](https://secure.travis-ci.org/aishek/languager.png)](http://travis-ci.org/aishek/languager)

# Installation

To install:

    gem install languager

or with a Gemfile:

    gem 'languager'
    bundle install

# Usage

Usage in Ruby program:

    require 'languager'

    query = "ghbdtn^ vbh!"
    query.to_ru # 'привет, мир!'

# Documentation

The [RubyDoc documentation](http://rubydoc.info/github/aishek/languager/master/frames) is available online.

# Copyright

Copyright (c) 2012 Alexandr Borisov. See LICENSE.txt for
further details.

