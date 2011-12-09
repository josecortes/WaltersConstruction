require "spec_helper"

describe HoursController do
  describe "routing" do

    it "routes to #index" do
      get("/hours").should route_to("hours#index")
    end

    it "routes to #new" do
      get("/hours/new").should route_to("hours#new")
    end

    it "routes to #show" do
      get("/hours/1").should route_to("hours#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hours/1/edit").should route_to("hours#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hours").should route_to("hours#create")
    end

    it "routes to #update" do
      put("/hours/1").should route_to("hours#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hours/1").should route_to("hours#destroy", :id => "1")
    end

  end
end
