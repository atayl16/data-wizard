require 'rails_helper'

RSpec.describe "salonservices/edit", type: :view do
  before(:each) do
    @salonservice = assign(:salonservice, Salonservice.create!())
  end

  it "renders the edit salonservice form" do
    render

    assert_select "form[action=?][method=?]", salonservice_path(@salonservice), "post" do
    end
  end
end
