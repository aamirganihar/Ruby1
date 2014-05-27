# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "watir-classic"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bret Pettichord"]
  s.date = "2012-04-23"
  s.description = "    WATIR is \"Web Application Testing in Ruby\". Watir (pronounced water) is a free,\n    open-source functional testing tool for automating browser-based tests of web applications.\n    It works with applications written in any language.\n    Watir drives the Internet Explorer browser the same way an end user would.\n    It clicks links, fills in forms, presses buttons.\n    Watir also checks results, such as whether expected text appears on the\n    page, or whether a control is enabled.\n    Watir can test web applications written in any language.\n    Watir is a Ruby library that works with Internet Explorer on Windows.\n"
  s.email = "watir-general@groups.google.com"
  s.executables = ["watir-console"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["bin/watir-console", "README.rdoc"]
  s.homepage = "http://www.watir.com/"
  s.rdoc_options = ["--title", "Watir API Reference", "--accessor", "def_wrap=R,def_wrap_guard=R", "--main", "README.rdoc", "--exclude", "unittests|camel_case.rb"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["Microsoft Windows running Internet Explorer 5.5 or later."]
  s.rubyforge_project = "Watir"
  s.rubygems_version = "1.8.24"
  s.summary = "Automated testing tool for web applications."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-process>, [">= 0.5.5"])
      s.add_runtime_dependency(%q<windows-pr>, [">= 0.6.6"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0"])
      s.add_runtime_dependency(%q<rautomation>, ["~> 0.7.2"])
      s.add_runtime_dependency(%q<user-choices>, [">= 0"])
    else
      s.add_dependency(%q<win32-process>, [">= 0.5.5"])
      s.add_dependency(%q<windows-pr>, [">= 0.6.6"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<ffi>, ["~> 1.0"])
      s.add_dependency(%q<rautomation>, ["~> 0.7.2"])
      s.add_dependency(%q<user-choices>, [">= 0"])
    end
  else
    s.add_dependency(%q<win32-process>, [">= 0.5.5"])
    s.add_dependency(%q<windows-pr>, [">= 0.6.6"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<ffi>, ["~> 1.0"])
    s.add_dependency(%q<rautomation>, ["~> 0.7.2"])
    s.add_dependency(%q<user-choices>, [">= 0"])
  end
end
