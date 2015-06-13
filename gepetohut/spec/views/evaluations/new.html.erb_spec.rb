require 'rails_helper'

RSpec.describe "evaluations/new", type: :view do
  before(:each) do
    assign(:evaluation, Evaluation.new(
      :rating_pizzeria => 1,
      :rating_service => 1,
      :rating_pizza => 1
    ))
  end

  it "renders new evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluations_path, "post" do

      assert_select "input#evaluation_rating_pizzeria[name=?]", "evaluation[rating_pizzeria]"

      assert_select "input#evaluation_rating_service[name=?]", "evaluation[rating_service]"

      assert_select "input#evaluation_rating_pizza[name=?]", "evaluation[rating_pizza]"
    end
  end
end
