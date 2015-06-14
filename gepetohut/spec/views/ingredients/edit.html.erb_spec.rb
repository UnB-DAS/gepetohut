require 'rails_helper'

RSpec.describe "ingredients/edit", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :name => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredient_path(@ingredient), "post" do

      assert_select "input#ingredient_name[name=?]", "ingredient[name]"

      assert_select "input#ingredient_price[name=?]", "ingredient[price]"
    end
  end
end
