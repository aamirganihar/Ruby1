# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "commonwatir"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bret Pettichord"]
  s.date = "2012-04-23"
  s.description = "This library is included so older versions of commonwatir are not activated"
  s.email = ["bret@pettichord.com"]
  s.homepage = "http://github.com/watir/watir"
  s.require_paths = ["lib"]
  s.rubyforge_project = "watir"
  s.rubygems_version = "1.8.24"
  s.summary = "Common library for Watir"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
