# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "user-choices"
  s.version = "1.1.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Marick"]
  s.date = "2010-01-14"
  s.description = "Unified interface to command-line, environment, and configuration files."
  s.email = "marick@exampler.com"
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "examples/older/README.txt", "examples/tutorial/css/LICENSE.txt"]
  s.files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "examples/older/README.txt", "examples/tutorial/css/LICENSE.txt"]
  s.homepage = "http://user-choices.rubyforge.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "user-choices"
  s.rubygems_version = "1.8.24"
  s.summary = "Unified interface to command-line, environment, and configuration files."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xml-simple>, [">= 1.0.11"])
      s.add_runtime_dependency(%q<s4t-utils>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
      s.add_dependency(%q<s4t-utils>, [">= 1.0.3"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
    s.add_dependency(%q<s4t-utils>, [">= 1.0.3"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
