require 'rails_helper'

RSpec.describe "petcategories/new", type: :view do
  before(:each) do
    assign(:petcategory, Petcategory.new())
  end

  it "renders new petcategory form" do
    render

    assert_select "form[action=?][method=?]", petcategories_path, "post" do
    end
  end
end
