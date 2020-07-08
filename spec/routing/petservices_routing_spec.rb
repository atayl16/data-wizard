require "rails_helper"

RSpec.describe PetservicesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/petservices").to route_to("petservices#index")
    end

    it "routes to #new" do
      expect(get: "/petservices/new").to route_to("petservices#new")
    end

    it "routes to #show" do
      expect(get: "/petservices/1").to route_to("petservices#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/petservices/1/edit").to route_to("petservices#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/petservices").to route_to("petservices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/petservices/1").to route_to("petservices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/petservices/1").to route_to("petservices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/petservices/1").to route_to("petservices#destroy", id: "1")
    end
  end
end
