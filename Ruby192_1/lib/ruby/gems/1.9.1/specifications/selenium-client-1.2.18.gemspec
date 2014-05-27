# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "selenium-client"
  s.version = "1.2.18"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["OpenQA"]
  s.date = "2010-01-12"
  s.email = "selenium-client@rubyforge.org"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://selenium-client.rubyforge.com"
  s.rdoc_options = ["--title", "Selenium Client", "--main", "README", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "selenium-client"
  s.rubygems_version = "1.8.24"
  s.summary = "Official Ruby Client for Selenium RC."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
