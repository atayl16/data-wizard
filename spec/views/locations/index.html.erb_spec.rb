require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        location_id: 2,
        nickname: "Nickname",
        country: "Country",
        street_address: "Street Address",
        street_address_2: "Street Address 2",
        city: "City",
        state: "State",
        zip: "Zip",
        phone_number: "Phone Number",
        deleted: false
      ),
      Location.create!(
        location_id: 2,
        nickname: "Nickname",
        country: "Country",
        street_address: "Street Address",
        street_address_2: "Street Address 2",
        city: "City",
        state: "State",
        zip: "Zip",
        phone_number: "Phone Number",
        deleted: false
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Nickname".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: "Street Address".to_s, count: 2
    assert_select "tr>td", text: "Street Address 2".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
