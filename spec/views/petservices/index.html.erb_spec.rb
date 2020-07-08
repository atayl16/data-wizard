require 'rails_helper'

RSpec.describe "petservices/index", type: :view do
  before(:each) do
    assign(:petservices, [
      Petservice.create!(),
      Petservice.create!()
    ])
  end

  it "renders a list of petservices" do
    render
  end
end
