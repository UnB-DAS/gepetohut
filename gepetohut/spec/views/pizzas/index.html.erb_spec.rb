require 'rails_helper'

RSpec.describe "pizzas/index", type: :view do
  before(:each) do
    assign(:pizzas, [
      Pizza.create!(
        :name => "Name",
        :price => "9.99",
        :rating => 1
      ),
      Pizza.create!(
        :name => "Name",
        :price => "9.99",
        :rating => 1
      )
    ])
  end

  it "renders a list of pizzas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
