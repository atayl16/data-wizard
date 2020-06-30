require 'rails_helper'

RSpec.describe "staffs/index", type: :view do
  before(:each) do
    assign(:staffs, [
      Staff.create!(
        employee_id: 2,
        name: "Name",
        title: "Title",
        email: "Email",
        username: "Username",
        location_id: 3,
        deleted: false
      ),
      Staff.create!(
        employee_id: 2,
        name: "Name",
        title: "Title",
        email: "Email",
        username: "Username",
        location_id: 3,
        deleted: false
      )
    ])
  end

  it "renders a list of staffs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Username".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
