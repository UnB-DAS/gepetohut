require 'rails_helper'

RSpec.describe "evaluations/index", type: :view do
  before(:each) do
    assign(:evaluations, [
      Evaluation.create!(
        :rating_pizzeria => 1,
        :rating_service => 2,
        :rating_pizza => 3
      ),
      Evaluation.create!(
        :rating_pizzeria => 1,
        :rating_service => 2,
        :rating_pizza => 3
      )
    ])
  end

  it "renders a list of evaluations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
