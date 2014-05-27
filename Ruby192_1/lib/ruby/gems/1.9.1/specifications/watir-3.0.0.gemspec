# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "watir"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bret Pettichord"]
  s.date = "2012-04-23"
  s.description = "Automated testing tool for web applications. By Testers. For Testers."
  s.email = ["bret@pettichord.com"]
  s.homepage = "http://github.com/watir/watir"
  s.require_paths = ["lib"]
  s.rubyforge_project = "watir"
  s.rubygems_version = "1.8.24"
  s.summary = "Watir"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<commonwatir>, ["= 3.0.0"])
      s.add_runtime_dependency(%q<watir-classic>, ["~> 3"])
    else
      s.add_dependency(%q<commonwatir>, ["= 3.0.0"])
      s.add_dependency(%q<watir-classic>, ["~> 3"])
    end
  else
    s.add_dependency(%q<commonwatir>, ["= 3.0.0"])
    s.add_dependency(%q<watir-classic>, ["~> 3"])
  end
end
