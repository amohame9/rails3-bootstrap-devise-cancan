require "spec_helper"

describe CouncilsController do
  describe "routing" do

    it "routes to #index" do
      get("/councils").should route_to("councils#index")
    end

    it "routes to #new" do
      get("/councils/new").should route_to("councils#new")
    end

    it "routes to #show" do
      get("/councils/1").should route_to("councils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/councils/1/edit").should route_to("councils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/councils").should route_to("councils#create")
    end

    it "routes to #update" do
      put("/councils/1").should route_to("councils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/councils/1").should route_to("councils#destroy", :id => "1")
    end

  end
end
