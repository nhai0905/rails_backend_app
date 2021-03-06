require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Octopus::Migration do    
  it "should run just in the master shard" do
    migrating_to_version 1 do 
      User.using(:master).find_by_name("Master").should_not be_nil    
      User.using(:canada).find_by_name("Master").should be_nil
    end
  end

  it "should run on specific shard" do
    migrating_to_version 2 do 
      User.using(:master).find_by_name("Sharding").should be_nil    
      User.using(:canada).find_by_name("Sharding").should_not be_nil
    end
  end

  it "should run on specifieds shards" do
    migrating_to_version 3 do 
      User.using(:brazil).find_by_name("Both").should_not be_nil    
      User.using(:canada).find_by_name("Both").should_not be_nil
    end
  end

  it "should run on specified group" do
    migrating_to_version 4 do 
      User.using(:canada).find_by_name("Group").should_not be_nil
      User.using(:brazil).find_by_name("Group").should_not be_nil    
      User.using(:russia).find_by_name("Group").should_not be_nil
    end
  end

  it "should run on multiples groups" do
    migrating_to_version 5 do 
      User.using(:canada).where(:name => "MultipleGroup").all.size.should == 2
      User.using(:brazil).where(:name => "MultipleGroup").all.size.should == 2
      User.using(:russia).where(:name => "MultipleGroup").all.size.should == 2
    end
  end

  it "should create users inside block" do
    migrating_to_version 12 do 
      User.using(:brazil).where(:name => "UsingBlock1").all.size.should == 1
      User.using(:brazil).where(:name => "UsingBlock2").all.size.should == 1
      User.using(:canada).where(:name => "UsingCanada").all.size.should == 1
      User.using(:canada).where(:name => "UsingCanada2").all.size.should == 1
    end
  end

  describe "should raise a exception when" do
    it "you specify a invalid shard name" do
      lambda { ActiveRecord::Migrator.run(:up, MIGRATIONS_ROOT, 6) }.should raise_error("Nonexistent Shard Name: amazing_shard")
    end

    it "you specify a invalid shard name, even if you have multiple shards, and one of them are right" do
      lambda { ActiveRecord::Migrator.run(:up, MIGRATIONS_ROOT, 7) }.should raise_error("Nonexistent Shard Name: invalid_shard")
    end

    it "you specify a invalid group name" do
      lambda { ActiveRecord::Migrator.run(:up, MIGRATIONS_ROOT, 8) }.should raise_error("Nonexistent Group Name: invalid_group")
    end

    it "you specify a invalid group name, even if you have multiple groups, and one of them are right" do
      lambda { ActiveRecord::Migrator.run(:up, MIGRATIONS_ROOT, 9) }.should raise_error("Nonexistent Group Name: invalid_group")
    end
  end 

  describe "when using replication" do    
    it "should run writes on master when you use replication" do
      using_enviroment :production_replicated do 
        migrating_to_version 10 do 
          Cat.using(:master).where(:name => "Replication").first.should_not be_nil
          Cat.where(:name => "Replication").first.should be_nil
        end
      end
    end

    it "should run in all shards, master or another shards" do
      using_enviroment :production_replicated do 
        migrating_to_version 11 do 
          [:slave4, :slave1, :slave2, :slave3].each do |sym|
            Cat.using(sym).find_by_name("Slaves").should_not be_nil
          end

          Cat.using(:master).find_by_name("Slaves").should be_nil
        end
      end
    end
  end
end

