require 'rails_helper'

RSpec.describe "staffs/edit", type: :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      employee_id: 1,
      name: "MyString",
      title: "MyString",
      email: "MyString",
      username: "MyString",
      location_id: 1,
      deleted: false
    ))
  end

  it "renders the edit staff form" do
    render

    assert_select "form[action=?][method=?]", staff_path(@staff), "post" do

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
