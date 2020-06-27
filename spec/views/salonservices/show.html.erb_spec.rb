require 'rails_helper'

RSpec.describe "salonservices/show", type: :view do
  before(:each) do
    @salonservice = assign(:salonservice, Salonservice.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
