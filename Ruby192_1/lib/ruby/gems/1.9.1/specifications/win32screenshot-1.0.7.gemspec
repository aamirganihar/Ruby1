# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "win32screenshot"
  s.version = "1.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jarmo Pertman", "Aslak Helles\u{f8}y"]
  s.date = "2012-02-23"
  s.description = "Capture Screenshots on Windows with Ruby to bmp, gif, jpg or png formats."
  s.email = ["jarmo.p@gmail.com", "aslak.hellesoy@gmail.com"]
  s.homepage = "http://github.com/jarmo/win32screenshot"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Capture Screenshots on Windows with Ruby to bmp, gif, jpg or png formats."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0"])
      s.add_runtime_dependency(%q<mini_magick>, ["~> 3.2.1"])
      s.add_runtime_dependency(%q<rautomation>, ["~> 0.7.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.0"])
      s.add_dependency(%q<mini_magick>, ["~> 3.2.1"])
      s.add_dependency(%q<rautomation>, ["~> 0.7.0"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.0"])
    s.add_dependency(%q<mini_magick>, ["~> 3.2.1"])
    s.add_dependency(%q<rautomation>, ["~> 0.7.0"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
  end
end
