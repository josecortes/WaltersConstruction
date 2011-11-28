require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    it 'should have the right title' do
      get 'new'
      response.should have_selector ("title", :content => "Login")
    end
    
    
    describe "POST" 'create' do
      
      describe "invalid signin" do
        before(:each) do
          @attr = { :name => "username", :password => "invalid"}
        end
        
        it "should re-render the new page" do
          post :create, :session => @attr
          response.should have_selector("title", :content => "Sing in")
        end
        
        if "should have a flash.now messge" do
          post :create, :session => @attr
          flash.now[:error].should =~ /invalid/i
        end
      end
  end

end
