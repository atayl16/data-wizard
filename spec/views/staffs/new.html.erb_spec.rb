require 'rails_helper'

RSpec.describe "staffs/new", type: :view do
  before(:each) do
    assign(:staff, Staff.new(
      employee_id: 1,
      name: "MyString",
      title: "MyString",
      email: "MyString",
      username: "MyString",
      location_id: 1,
      deleted: false
    ))
  end

  it "renders new staff form" do
    render

    assert_select "form[action=?][method=?]", staffs_path, "post" do

      assert_select "input[name=?]", "staff[employee_id]"

      assert_select "input[name=?]", "staff[name]"

      assert_select "input[name=?]", "staff[title]"

      assert_select "input[name=?]", "staff[email]"

      assert_select "input[name=?]", "staff[username]"

      assert_select "input[name=?]", "staff[location_id]"

      assert_select "input[name=?]", "staff[deleted]"
    end
  end
end
