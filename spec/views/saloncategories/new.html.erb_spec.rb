require 'rails_helper'

RSpec.describe "saloncategories/new", type: :view do
  before(:each) do
    assign(:saloncategory, Saloncategory.new(
      category_id: 1,
      name: "MyString",
      online: false,
      deleted: false
    ))
  end

  it "renders new saloncategory form" do
    render

    assert_select "form[action=?][method=?]", saloncategories_path, "post" do

      assert_select "input[name=?]", "saloncategory[category_id]"

      assert_select "input[name=?]", "saloncategory[name]"

      assert_select "input[name=?]", "saloncategory[online]"

      assert_select "input[name=?]", "saloncategory[deleted]"
    end
  end
end
