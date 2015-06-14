require 'rails_helper'

RSpec.describe "pizzas/index", type: :view do
  before(:each) do
    assign(:pizzas, [
      Pizza.create!(
        :name => "Name",
        :rating => 1,
        :price => 9.99
      ),
      Pizza.create!(
        :name => "Name",
        :rating => 1,
        :price => 9.99
      )
    ])
  end

  it "renders a list of pizzas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
