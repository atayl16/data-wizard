require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      service_id: "MyString",
      category_id: "MyString",
      name: "MyString",
      description: "MyString",
      duration: "MyString",
      is_add_on: "MyString",
      is_custom: "MyString",
      breed_group_id: "MyString",
      sku: "MyString",
      deleted: "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input[name=?]", "service[service_id]"

      assert_select "input[name=?]", "service[category_id]"

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[description]"

      assert_select "input[name=?]", "service[duration]"

      assert_select "input[name=?]", "service[is_add_on]"

      assert_select "input[name=?]", "service[is_custom]"

      assert_select "input[name=?]", "service[breed_group_id]"

      assert_select "input[name=?]", "service[sku]"

      assert_select "input[name=?]", "service[deleted]"
    end
  end
end
