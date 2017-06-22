# -*- encoding: utf-8 -*-
# stub: nested_ostruct 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "nested_ostruct"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["So Awesome Man"]
  s.date = "2017-06-22"
  s.description = "Convert nested OpenStruct to Hash"
  s.email = "callme@1800AWESO.ME"
  s.executables = ["nested_ostruct"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.md", "History.txt"]
  s.files = [".autotest", ".gitignore", ".hoeignore", "Gemfile", "History.txt", "Manifest.txt", "README.md", "Rakefile", "bin/nested_ostruct", "lib/nested_ostruct.rb", "lib/nested_ostruct/version.rb", "test/test_nested_ostruct.rb"]
  s.homepage = "https://github.com/awesome/nested_ostruct"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "nested_ostruct", "--markup", "markdown", "--quiet"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.2.5"
  s.summary = "Convert nested OpenStruct to Hash"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.10"])
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.3"])
      s.add_development_dependency(%q<hoe-ignore>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.3"])
      s.add_development_dependency(%q<hoe>, ["~> 3.16"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.10"])
      s.add_dependency(%q<hoe-yard>, [">= 0.1.3"])
      s.add_dependency(%q<hoe-ignore>, ["~> 1.0"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<redcarpet>, ["~> 3.3"])
      s.add_dependency(%q<hoe>, ["~> 3.16"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.10"])
    s.add_dependency(%q<hoe-yard>, [">= 0.1.3"])
    s.add_dependency(%q<hoe-ignore>, ["~> 1.0"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
    s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
    s.add_dependency(%q<hoe-git>, ["~> 1.6"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<redcarpet>, ["~> 3.3"])
    s.add_dependency(%q<hoe>, ["~> 3.16"])
  end
end
