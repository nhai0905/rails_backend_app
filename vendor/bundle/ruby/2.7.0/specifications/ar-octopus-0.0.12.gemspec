# -*- encoding: utf-8 -*-
# stub: ar-octopus 0.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "ar-octopus".freeze
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thiago Pradi".freeze, "Mike Perham".freeze, "Amit Agarwal".freeze]
  s.date = "2010-06-29"
  s.description = "This gem allows you to use sharded databases with ActiveRecord. this also provides a interface for replication and for running migrations with multiples shards.".freeze
  s.email = "tchandy@gmail.com".freeze
  s.extra_rdoc_files = ["README.mkdn".freeze]
  s.files = ["README.mkdn".freeze]
  s.homepage = "http://github.com/tchandy/octopus".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Easy Database Sharding for ActiveRecord".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, [">= 1.2.9"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0.0beta"])
  else
    s.add_dependency(%q<rspec>.freeze, [">= 1.2.9"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0beta"])
  end
end
