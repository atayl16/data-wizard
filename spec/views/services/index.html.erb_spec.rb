require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
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
      ),
      Service.create!(
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
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", text: "Service".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "Duration".to_s, count: 2
    assert_select "tr>td", text: "Is Add On".to_s, count: 2
    assert_select "tr>td", text: "Is Custom".to_s, count: 2
    assert_select "tr>td", text: "Breed Group".to_s, count: 2
    assert_select "tr>td", text: "Sku".to_s, count: 2
    assert_select "tr>td", text: "Deleted".to_s, count: 2
  end
end
