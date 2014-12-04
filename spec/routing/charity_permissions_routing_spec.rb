require "spec_helper"

describe CharityPermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/charity_permissions").should route_to("charity_permissions#index")
    end

    it "routes to #new" do
      get("/charity_permissions/new").should route_to("charity_permissions#new")
    end

    it "routes to #show" do
      get("/charity_permissions/1").should route_to("charity_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/charity_permissions/1/edit").should route_to("charity_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/charity_permissions").should route_to("charity_permissions#create")
    end

    it "routes to #update" do
      put("/charity_permissions/1").should route_to("charity_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/charity_permissions/1").should route_to("charity_permissions#destroy", :id => "1")
    end

  end
end
