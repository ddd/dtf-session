require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "Environment" do

  context "Class" do

    it "should be a Class" do
      Dtf::Session::Environment.class.should eq(Class)
    end

  end

end

