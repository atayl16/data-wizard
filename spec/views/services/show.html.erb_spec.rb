require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      service_id: "Service",
      category_id: "Category",
      name: "Name",
      description: "Description",
      duration: "Duration",
      is_add_on: "Is Add On",
      is_custom: "Is Custom",
      breed_group_id: "Breed Group",
      sku: "Sku",
      deleted: "Deleted"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/Is Add On/)
    expect(rendered).to match(/Is Custom/)
    expect(rendered).to match(/Breed Group/)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/Deleted/)
  end
end
