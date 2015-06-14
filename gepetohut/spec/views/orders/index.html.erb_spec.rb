require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :total_to_pay => 1.5,
        :qtd_pizzas => 1
      ),
      Order.create!(
        :total_to_pay => 1.5,
        :qtd_pizzas => 1
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
