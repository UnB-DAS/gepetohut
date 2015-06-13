require 'rails_helper'

RSpec.describe "evaluations/edit", type: :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      :rating_pizzeria => 1,
      :rating_service => 1,
      :rating_pizza => 1
    ))
  end

  it "renders the edit evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluation_path(@evaluation), "post" do

      assert_select "input#evaluation_rating_pizzeria[name=?]", "evaluation[rating_pizzeria]"

      assert_select "input#evaluation_rating_service[name=?]", "evaluation[rating_service]"

      assert_select "input#evaluation_rating_pizza[name=?]", "evaluation[rating_pizza]"
    end
  end
end
