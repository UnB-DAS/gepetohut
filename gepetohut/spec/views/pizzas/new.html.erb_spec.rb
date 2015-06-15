require 'rails_helper'

RSpec.describe "pizzas/new", type: :view do
  before(:each) do
    assign(:pizza, Pizza.new(
      :name => "MyString",
      :price => "9.99",
      :rating => 1
    ))
  end

  it "renders new pizza form" do
    render

    assert_select "form[action=?][method=?]", pizzas_path, "post" do

      assert_select "input#pizza_name[name=?]", "pizza[name]"

      assert_select "input#pizza_price[name=?]", "pizza[price]"

      #assert_select "input#pizza_rating[name=?]", "pizza[rating]"
    end
  end
end
