require 'rails_helper'

RSpec.describe "petservices/new", type: :view do
  before(:each) do
    assign(:petservice, Petservice.new())
  end

  it "renders new petservice form" do
    render

    assert_select "form[action=?][method=?]", petservices_path, "post" do
    end
  end
end
