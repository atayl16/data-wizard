require "rails_helper"

RSpec.describe PetcategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/petcategories").to route_to("petcategories#index")
    end

    it "routes to #new" do
      expect(get: "/petcategories/new").to route_to("petcategories#new")
    end

    it "routes to #show" do
      expect(get: "/petcategories/1").to route_to("petcategories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/petcategories/1/edit").to route_to("petcategories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/petcategories").to route_to("petcategories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/petcategories/1").to route_to("petcategories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/petcategories/1").to route_to("petcategories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/petcategories/1").to route_to("petcategories#destroy", id: "1")
    end
  end
end
