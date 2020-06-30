require "rails_helper"

RSpec.describe SaloncategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/saloncategories").to route_to("saloncategories#index")
    end

    it "routes to #new" do
      expect(get: "/saloncategories/new").to route_to("saloncategories#new")
    end

    it "routes to #show" do
      expect(get: "/saloncategories/1").to route_to("saloncategories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/saloncategories/1/edit").to route_to("saloncategories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/saloncategories").to route_to("saloncategories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/saloncategories/1").to route_to("saloncategories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/saloncategories/1").to route_to("saloncategories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/saloncategories/1").to route_to("saloncategories#destroy", id: "1")
    end
  end
end
