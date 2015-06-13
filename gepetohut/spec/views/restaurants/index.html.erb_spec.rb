require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        :name => "Name",
        :qtd_delivery => 1,
        :qtd_pizzaiolo => 2,
        :qtd_income => 1.5,
        :qtd_expense => 1.5,
        :rating => 3
      ),
      Restaurant.create!(
        :name => "Name",
        :qtd_delivery => 1,
        :qtd_pizzaiolo => 2,
        :qtd_income => 1.5,
        :qtd_expense => 1.5,
        :rating => 3
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
