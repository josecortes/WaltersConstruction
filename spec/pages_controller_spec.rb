require 'spec-helper'

describe PagesController do
  
  describe "GET  'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end
  
  describe "GET 'emp_home'" do
    it "should be successful" do
      get 'emp_home'
      response.should be_success
    end
  end
  
  describe "GET 'emp_hours'" do
    it "should be successful" do
      get 'emp_hours'
      response.should be_success
    end
  end
end
