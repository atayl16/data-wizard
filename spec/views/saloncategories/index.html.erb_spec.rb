require 'rails_helper'

RSpec.describe "saloncategories/index", type: :view do
  before(:each) do
    assign(:saloncategories, [
      Saloncategory.create!(
        category_id: 2,
        name: "Name",
        online: false,
        deleted: false
      ),
      Saloncategory.create!(
        category_id: 2,
        name: "Name",
        online: false,
        deleted: false
      )
    ])
  end

  it "renders a list of saloncategories" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
