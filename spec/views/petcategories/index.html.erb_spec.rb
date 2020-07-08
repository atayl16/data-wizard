require 'rails_helper'

RSpec.describe "petcategories/index", type: :view do
  before(:each) do
    assign(:petcategories, [
      Petcategory.create!(),
      Petcategory.create!()
    ])
  end

  it "renders a list of petcategories" do
    render
  end
end
