require 'rails_helper'

RSpec.describe "petservices/edit", type: :view do
  before(:each) do
    @petservice = assign(:petservice, Petservice.create!())
  end

  it "renders the edit petservice form" do
    render

    assert_select "form[action=?][method=?]", petservice_path(@petservice), "post" do
    end
  end
end
