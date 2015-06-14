require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :total_to_pay => 1.5,
      :qtd_pizzas => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_total_to_pay[name=?]", "order[total_to_pay]"

      assert_select "input#order_qtd_pizzas[name=?]", "order[qtd_pizzas]"
    end
  end
end
