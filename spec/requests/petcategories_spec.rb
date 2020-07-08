 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/petcategories", type: :request do
  # Petcategory. As you add validations to Petcategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Petcategory.create! valid_attributes
      get petcategories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      petcategory = Petcategory.create! valid_attributes
      get petcategory_url(petcategory)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_petcategory_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      petcategory = Petcategory.create! valid_attributes
      get edit_petcategory_url(petcategory)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Petcategory" do
        expect {
          post petcategories_url, params: { petcategory: valid_attributes }
        }.to change(Petcategory, :count).by(1)
      end

      it "redirects to the created petcategory" do
        post petcategories_url, params: { petcategory: valid_attributes }
        expect(response).to redirect_to(petcategory_url(Petcategory.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Petcategory" do
        expect {
          post petcategories_url, params: { petcategory: invalid_attributes }
        }.to change(Petcategory, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post petcategories_url, params: { petcategory: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested petcategory" do
        petcategory = Petcategory.create! valid_attributes
        patch petcategory_url(petcategory), params: { petcategory: new_attributes }
        petcategory.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the petcategory" do
        petcategory = Petcategory.create! valid_attributes
        patch petcategory_url(petcategory), params: { petcategory: new_attributes }
        petcategory.reload
        expect(response).to redirect_to(petcategory_url(petcategory))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        petcategory = Petcategory.create! valid_attributes
        patch petcategory_url(petcategory), params: { petcategory: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested petcategory" do
      petcategory = Petcategory.create! valid_attributes
      expect {
        delete petcategory_url(petcategory)
      }.to change(Petcategory, :count).by(-1)
    end

    it "redirects to the petcategories list" do
      petcategory = Petcategory.create! valid_attributes
      delete petcategory_url(petcategory)
      expect(response).to redirect_to(petcategories_url)
    end
  end
end
