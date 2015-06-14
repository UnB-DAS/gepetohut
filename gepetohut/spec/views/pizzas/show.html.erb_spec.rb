require 'rails_helper'

RSpec.describe "pizzas/show", type: :view do
  before(:each) do
    @pizza = assign(:pizza, Pizza.create!(
      :name => "Name",
      :price => "9.99",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
  end
end
