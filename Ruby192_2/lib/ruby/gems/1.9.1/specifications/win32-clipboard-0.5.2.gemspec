# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "win32-clipboard"
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger", "Park Heesob"]
  s.date = "2009-07-13"
  s.description = "      The win32-clipboard library provides an interface for interacting\n      with the Windows clipboard. It supports the ability to read and\n      write text, images, files, and Windows metafiles.\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["CHANGES", "README", "MANIFEST"]
  s.files = ["CHANGES", "README", "MANIFEST"]
  s.homepage = "http://www.rubyforge.org/projects/win32utils"
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "win32utils"
  s.rubygems_version = "1.8.24"
  s.summary = "A library for interacting with the Windows clipboard"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<windows-pr>, [">= 1.0.3"])
    else
      s.add_dependency(%q<windows-pr>, [">= 1.0.3"])
    end
  else
    s.add_dependency(%q<windows-pr>, [">= 1.0.3"])
  end
end
