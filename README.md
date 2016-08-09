# Rails 4 Plugin: missing_template_406

[![Gem](https://img.shields.io/gem/v/missing_template_406.svg?maxAge=2592000?style=plastic)](https://rubygems.org/gems/missing_template_406)
[![Build Status](https://travis-ci.org/appfolio/missing_template_406.svg?branch=master)](https://travis-ci.org/appfolio/missing_template_406)

Modifies `ActionController::Base` such that, in production,
`ActionView::MissingTemplate` exceptions are caught and an HTTP 406-Not
Acceptable response is rendered.

This gem is verified to work with the build matrix including
Rails 4.0._X_, 4.1._X_, 4.2._X_ (_X_ being latest), and
Ruby 2.0.0, 2.1.10, 2.2.5, 2.3.1.

Rails 5 raises a `ActionController::UnknownFormat` when attempting to request a
format that does not have a template. In production mode, this exception is
implicitly converted to a 406-Not Acceptable HTTP response. As a result of
Rails 5 including the desired behavior, the 406 response, this gem will fail to
install when included in a Rails 5 gemfile.

## Usage

To take advantage of this plugin simply add missing_template_406 to your
gemfile:

    gem 'missing_template_406'

## Motivation

Motivation for this plugin stemmed from this blog post by Robert Pankowecki:  
http://blog.arkency.com/2016/07/respond-to-format-is-useful-even-without-multiple-formats/
