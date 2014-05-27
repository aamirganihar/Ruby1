# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubygems-update}
  s.version = "1.8.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Weirich", "Chad Fowler", "Eric Hodel"]
  s.date = %q{2012-04-27}
  s.description = %q{RubyGems is a package management framework for Ruby.

This gem is an update for the RubyGems software. You must have an
installation of RubyGems before this update can be applied.

See Gem for information on RubyGems (or `ri Gem`)

To upgrade to the latest RubyGems, run:

  $ gem update --system  # you might need to be an administrator or root

See UPGRADING.rdoc for more details and alternative instructions.

-----

If you don't have RubyGems installed, your can still do it manually:

* Download from: https://rubygems.org/pages/download
* Unpack into a directory and cd there
* Install with: ruby setup.rb  # you may need admin/root privilege

For more details and other options, see:

  ruby setup.rb --help}
  s.email = ["rubygems-developers@rubyforge.org"]
  s.executables = ["update_rubygems"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "MIT.txt", "Manifest.txt", "README.rdoc", "UPGRADING.rdoc", "hide_lib_for_update/note.txt"]
  s.files = ["bin/update_rubygems", "History.txt", "LICENSE.txt", "MIT.txt", "Manifest.txt", "README.rdoc", "UPGRADING.rdoc", "hide_lib_for_update/note.txt"]
  s.homepage = %q{http://rubygems.org}
  s.rdoc_options = ["--main", "README.rdoc", "--title=RubyGems 1.8.24 Documentation"]
  s.require_paths = ["hide_lib_for_update"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rubygems}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{RubyGems is a package management framework for Ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 2.11"])
      s.add_development_dependency(%q<builder>, ["~> 2.1"])
      s.add_development_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
      s.add_development_dependency(%q<session>, ["~> 2.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.0"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.0"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_development_dependency(%q<hoe>, ["~> 2.14"])
    else
      s.add_dependency(%q<minitest>, ["~> 2.11"])
      s.add_dependency(%q<builder>, ["~> 2.1"])
      s.add_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
      s.add_dependency(%q<session>, ["~> 2.4"])
      s.add_dependency(%q<rdoc>, ["~> 3.0"])
      s.add_dependency(%q<rcov>, ["~> 0.9.0"])
      s.add_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_dependency(%q<hoe>, ["~> 2.14"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 2.11"])
    s.add_dependency(%q<builder>, ["~> 2.1"])
    s.add_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
    s.add_dependency(%q<session>, ["~> 2.4"])
    s.add_dependency(%q<rdoc>, ["~> 3.0"])
    s.add_dependency(%q<rcov>, ["~> 0.9.0"])
    s.add_dependency(%q<ZenTest>, ["~> 4.5"])
    s.add_dependency(%q<hoe>, ["~> 2.14"])
  end
end
