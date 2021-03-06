# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ar-octopus}
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thiago Pradi", "Mike Perham", "Amit Agarwal"]
  s.date = %q{2010-06-29}
  s.description = %q{This gem allows you to use sharded databases with ActiveRecord. this also provides a interface for replication and for running migrations with multiples shards.}
  s.email = %q{tchandy@gmail.com}
  s.extra_rdoc_files = [
    "README.mkdn"
  ]
  s.files = [
    ".gitignore",
     "README.mkdn",
     "Rakefile",
     "VERSION",
     "ar-octopus.gemspec",
     "doc/api.textile",
     "doc/features.textile",
     "doc/libraries.textile",
     "doc/shards.yml",
     "lib/octopus.rb",
     "lib/octopus/association.rb",
     "lib/octopus/association_collection.rb",
     "lib/octopus/controller.rb",
     "lib/octopus/has_and_belongs_to_many_association.rb",
     "lib/octopus/migration.rb",
     "lib/octopus/model.rb",
     "lib/octopus/persistence.rb",
     "lib/octopus/proxy.rb",
     "lib/octopus/scope_proxy.rb",
     "rails/init.rb",
     "spec/config/shards.yml",
     "spec/database_connection.rb",
     "spec/database_models.rb",
     "spec/migrations/10_create_users_using_replication.rb",
     "spec/migrations/11_add_field_in_all_slaves.rb",
     "spec/migrations/12_create_users_using_block.rb",
     "spec/migrations/1_create_users_on_master.rb",
     "spec/migrations/2_create_users_on_canada.rb",
     "spec/migrations/3_create_users_on_both_shards.rb",
     "spec/migrations/4_create_users_on_shards_of_a_group.rb",
     "spec/migrations/5_create_users_on_multiples_groups.rb",
     "spec/migrations/6_raise_exception_with_invalid_shard_name.rb",
     "spec/migrations/7_raise_exception_with_invalid_multiple_shard_names.rb",
     "spec/migrations/8_raise_exception_with_invalid_group_name.rb",
     "spec/migrations/9_raise_exception_with_multiple_invalid_group_names.rb",
     "spec/octopus/association_spec.rb",
     "spec/octopus/controller_spec.rb",
     "spec/octopus/migration_spec.rb",
     "spec/octopus/model_spec.rb",
     "spec/octopus/octopus_spec.rb",
     "spec/octopus/proxy_spec.rb",
     "spec/octopus/replication_specs.rb",
     "spec/octopus/scope_proxy_spec.rb",
     "spec/octopus_helper.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/tchandy/octopus}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Easy Database Sharding for ActiveRecord}
  s.test_files = [
    "spec/database_connection.rb",
     "spec/database_models.rb",
     "spec/migrations/10_create_users_using_replication.rb",
     "spec/migrations/11_add_field_in_all_slaves.rb",
     "spec/migrations/12_create_users_using_block.rb",
     "spec/migrations/1_create_users_on_master.rb",
     "spec/migrations/2_create_users_on_canada.rb",
     "spec/migrations/3_create_users_on_both_shards.rb",
     "spec/migrations/4_create_users_on_shards_of_a_group.rb",
     "spec/migrations/5_create_users_on_multiples_groups.rb",
     "spec/migrations/6_raise_exception_with_invalid_shard_name.rb",
     "spec/migrations/7_raise_exception_with_invalid_multiple_shard_names.rb",
     "spec/migrations/8_raise_exception_with_invalid_group_name.rb",
     "spec/migrations/9_raise_exception_with_multiple_invalid_group_names.rb",
     "spec/octopus/association_spec.rb",
     "spec/octopus/controller_spec.rb",
     "spec/octopus/migration_spec.rb",
     "spec/octopus/model_spec.rb",
     "spec/octopus/octopus_spec.rb",
     "spec/octopus/proxy_spec.rb",
     "spec/octopus/replication_specs.rb",
     "spec/octopus/scope_proxy_spec.rb",
     "spec/octopus_helper.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0beta"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0beta"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0beta"])
  end
end

