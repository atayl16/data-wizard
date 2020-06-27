require 'rails_helper'

RSpec.describe "salonservices/index", type: :view do
  before(:each) do
    assign(:salonservices, [
      Salonservice.create!(),
      Salonservice.create!()
    ])
  end

  it "renders a list of salonservices" do
    render
  end
end
