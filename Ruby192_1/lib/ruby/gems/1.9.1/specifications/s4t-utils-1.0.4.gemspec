# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "s4t-utils"
  s.version = "1.0.4"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Marick"]
  s.cert_chain = nil
  s.date = "2007-11-18"
  s.description = "Unified interface to command-line, environment, and configuration files."
  s.email = "marick@exampler.com"
  s.executables = ["make-s4t-project.rb", "s4t-script-location-file"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "NOTES.txt", "README.txt"]
  s.files = ["bin/make-s4t-project.rb", "bin/s4t-script-location-file", "History.txt", "LICENSE.txt", "Manifest.txt", "NOTES.txt", "README.txt"]
  s.homepage = "http://s4t-utils.rubyforge.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = "s4t-utils"
  s.rubygems_version = "1.8.24"
  s.summary = "Unified interface to command-line, environment, and configuration files."

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hoe>, [">= 1.3.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.3.0"])
  end
end
