require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
    
    it "home should have the right title" do
      get 'login'
      response.should have_selector("title",
        :content=> "Walters Construction Login")
    end
  end
  
  describe "GET 'emp_home'" do
    it "returns http success" do
      get 'emp_home'
      response.should be_success
    end
  end

  describe "GET 'emp_hours'" do
    it "returns http success" do
      get 'emp_hours'
      response.should be_success
    end
  end

  describe "GET 'owner_home'" do
    it "returns http success" do
      get 'owner_home'
      response.should be_success
    end
  end
  
end
