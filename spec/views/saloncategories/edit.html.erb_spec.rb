require 'rails_helper'

RSpec.describe "saloncategories/edit", type: :view do
  before(:each) do
    @saloncategory = assign(:saloncategory, Saloncategory.create!(
      category_id: 1,
      name: "MyString",
      online: false,
      deleted: false
    ))
  end

  it "renders the edit saloncategory form" do
    render

    assert_select "form[action=?][method=?]", saloncategory_path(@saloncategory), "post" do

      assert_select "input[name=?]", "saloncategory[category_id]"

      assert_select "input[name=?]", "saloncategory[name]"

      assert_select "input[name=?]", "saloncategory[online]"

      assert_select "input[name=?]", "saloncategory[deleted]"
    end
  end
end
