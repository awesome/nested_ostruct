# -*- ruby -*-

require "rubygems"
require "hoe"
require './lib/nested_ostruct/version.rb'

Hoe.plugin :gemspec
Hoe.plugin :minitest
Hoe.plugin :yard
Hoe.plugin :bundler
Hoe.plugin :git
Hoe.plugin :ignore

Hoe.spec "nested_ostruct" do
  developer("So Awesome Man", "callme@1800AWESO.ME")

  license "MIT" # this matches the license in the README file

  self.email                = 'callme@1800AWESO.ME'

  self.name                 = 'nested_ostruct'
  self.version              = NestedOstruct::VERSION
  self.summary              = 'Convert nested OpenStruct to Hash'
  self.description          = self.summary
  self.urls                 = ['https://github.com/awesome/nested_ostruct']
  self.testlib              = :minitest
  self.readme_file          = 'README.md'
  self.history_file         = 'History.txt'

  # third-party
  self.yard_title           = self.name
  self.yard_markup          = 'markdown'

  self.extra_dev_deps += [
    ["hoe-yard",                  "~> 0.1"],
    ["hoe-ignore",                "~> 1.0"],
    ["hoe-bundler",               "~> 1.2"],
    ["hoe-gemspec",               "~> 1.0"],
    ["hoe-git",                   "~> 1.6"],
    ["minitest",                  "~> 5.9"],
    ["yard",                      "~> 0.8"],
    ["redcarpet",                 "~> 3.3"] # yard/markdown
  ]

  self.clean_globs += [
    '.yardoc',
    'vendor',
    'Gemfile.lock',
    '.bundle',
  ]

  self.spec_extras = {
    :required_ruby_version => '>= 1.9.2'
  }
end

# vim: syntax=ruby
