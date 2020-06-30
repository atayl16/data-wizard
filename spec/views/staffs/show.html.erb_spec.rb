require 'rails_helper'

RSpec.describe "staffs/show", type: :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      employee_id: 2,
      name: "Name",
      title: "Title",
      email: "Email",
      username: "Username",
      location_id: 3,
      deleted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
