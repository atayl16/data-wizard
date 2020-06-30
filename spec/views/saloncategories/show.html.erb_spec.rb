require 'rails_helper'

RSpec.describe "saloncategories/show", type: :view do
  before(:each) do
    @saloncategory = assign(:saloncategory, Saloncategory.create!(
      category_id: 2,
      name: "Name",
      online: false,
      deleted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
