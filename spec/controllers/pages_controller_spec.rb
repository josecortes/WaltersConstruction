require 'spec_helper'

describe PagesController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
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

end
