require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = { :name => "Example name", :email => "user@example.com", :password => "pwd", :position => "pos"}
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end
  
  it "should require an email" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end
  
  it "should reject duplicate names" do
    User.create!(@attr)
    user_with_duplicate_name = User.new(@attr)
    user_with_duplicate_name.should_not be_valid
  end
  
  describe "authentication method" do
    
    it "should return nil on email/password mismatch" do
      wrong_password_user = User.authenticate(@attr[:name], "wrongpass")
      wrong_password_user.should be_nil
    end
    
    it "should return nil for a name with no user" do
      nonexits_user = User.authenticate("foobar", @attr[:password])
      nonexits_user.should be_nil
  end  
  
  it "should return the user on name/password match" do
    matching_user = User.authenticate(@attr[:name], @attr[:password])
    matching_user.should == @user
  end
  end
end
