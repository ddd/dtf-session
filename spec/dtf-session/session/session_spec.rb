require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Session do

  context "Module" do

    it "should be a Module" do
      Dtf::Session.class.should eq(Module)
    end

  end

  context "Dependencies" do

    it "should depend on Session gem" do
      Gem.loaded_specs['session'].should_not be_nil
    end

  end

  context "Contained Classes" do

    it "should contain Environment class" do
      Dtf::Session.constants.include?(:Environment)
    end

  end

end

