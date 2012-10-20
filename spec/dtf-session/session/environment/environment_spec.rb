require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "Environment" do

  context "Class" do

    it "should be a Class" do
      Dtf::Session::Environment.class.should eq(Class)
    end

  end

  context "Environment Configuration" do
     env = Dtf::Session::Environment.new

    it "should be assigned a Shell process" do
      env.test_shell = ::Session::Bash.new
      env.test_shell.class.should eq(Session::Bash)
    end

    it "should capture the Shell's pre-execution environment" do
      env.start_env = env.set_start_env(env.test_shell)
      env.start_env.should be_a(Hash)
    end

    it "should be able to execute a Shell command" do
      env.test_shell.respond_to?(:execute)
      env.test_shell.execute('ls')
    end

    it "should be able to test the Shell's exist status" do
      env.test_shell.status.should_not be nil
    end

    it "should capture the Shell's post-execution environment" do
      env.stop_env = env.set_stop_env(env.test_shell)
      env.stop_env.should be_a(Hash)
    end
 
  end
end

