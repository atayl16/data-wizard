require 'rails_helper'

RSpec.describe "petservices/show", type: :view do
  before(:each) do
    @petservice = assign(:petservice, Petservice.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
