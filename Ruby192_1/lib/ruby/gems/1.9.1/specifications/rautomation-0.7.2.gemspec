# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rautomation"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jarmo Pertman"]
  s.date = "2012-03-17"
  s.description = "RAutomation is a small and easy to use library for helping out to automate windows and their controls\nfor automated testing.\n\nRAutomation provides:\n* Easy to use and user-friendly API (inspired by Watir http://www.watir.com)\n* Cross-platform compatibility\n* Easy extensibility - with small scripting effort it's possible to add support for not yet\n  supported platforms or technologies"
  s.email = "jarmo.p@gmail.com"
  s.homepage = "http://github.com/jarmo/RAutomation"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Automate windows and their controls through user-friendly API with Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.3"])
  end
end
