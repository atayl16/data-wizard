require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      location_id: 1,
      nickname: "MyString",
      country: "MyString",
      street_address: "MyString",
      street_address_2: "MyString",
      city: "MyString",
      state: "MyString",
      zip: "MyString",
      phone_number: "MyString",
      deleted: false
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input[name=?]", "location[location_id]"

      assert_select "input[name=?]", "location[nickname]"

      assert_select "input[name=?]", "location[country]"

      assert_select "input[name=?]", "location[street_address]"

      assert_select "input[name=?]", "location[street_address_2]"

      assert_select "input[name=?]", "location[city]"

      assert_select "input[name=?]", "location[state]"

      assert_select "input[name=?]", "location[zip]"

      assert_select "input[name=?]", "location[phone_number]"

      assert_select "input[name=?]", "location[deleted]"
    end
  end
end
