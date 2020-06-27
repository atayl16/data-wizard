require 'rails_helper'

RSpec.describe "salonservices/new", type: :view do
  before(:each) do
    assign(:salonservice, Salonservice.new())
  end

  it "renders new salonservice form" do
    render

    assert_select "form[action=?][method=?]", salonservices_path, "post" do
    end
  end
end
