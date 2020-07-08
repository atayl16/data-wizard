require 'rails_helper'

RSpec.describe "petcategories/edit", type: :view do
  before(:each) do
    @petcategory = assign(:petcategory, Petcategory.create!())
  end

  it "renders the edit petcategory form" do
    render

    assert_select "form[action=?][method=?]", petcategory_path(@petcategory), "post" do
    end
  end
end
