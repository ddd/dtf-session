require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Dtf::Session do

  context "Module" do

    it "should be a Module" do
      Dtf::Session.class.should eq(Module)
    end

    it "should specify a VERSION" do
      Dtf::Session.class.const_defined?(:VERSION)
      Dtf::Session::VERSION.should_not be_empty
      Dtf::Session::VERSION.class.should eq(String)
    end

  end

  context "Dependencies" do

    it "should depend on DTF master gem" do
      @gem_dep = false
      Gem.loaded_specs['dtf-session'].dependencies.each do |spec|
        if spec.name == "dtf"
          @gem_dep = true
        end
      end

      @gem_dep.should be_true
    end

  end

end

