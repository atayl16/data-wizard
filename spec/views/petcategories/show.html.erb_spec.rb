require 'rails_helper'

RSpec.describe "petcategories/show", type: :view do
  before(:each) do
    @petcategory = assign(:petcategory, Petcategory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
