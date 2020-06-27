require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/Street Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
  end
end
