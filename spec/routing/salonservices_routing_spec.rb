require "rails_helper"

RSpec.describe SalonservicesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/salonservices").to route_to("salonservices#index")
    end

    it "routes to #new" do
      expect(get: "/salonservices/new").to route_to("salonservices#new")
    end

    it "routes to #show" do
      expect(get: "/salonservices/1").to route_to("salonservices#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/salonservices/1/edit").to route_to("salonservices#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/salonservices").to route_to("salonservices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/salonservices/1").to route_to("salonservices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/salonservices/1").to route_to("salonservices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/salonservices/1").to route_to("salonservices#destroy", id: "1")
    end
  end
end
