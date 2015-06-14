require 'rails_helper'

RSpec.describe "ingredients/show", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :name => "Name",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
  end
end
