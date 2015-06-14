require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :total_to_pay => 1.5,
      :qtd_pizzas => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_total_to_pay[name=?]", "order[total_to_pay]"

      assert_select "input#order_qtd_pizzas[name=?]", "order[qtd_pizzas]"
    end
  end
end
