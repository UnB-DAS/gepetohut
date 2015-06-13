require 'rails_helper'

RSpec.describe "evaluations/show", type: :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      :rating_pizzeria => 1,
      :rating_service => 2,
      :rating_pizza => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
