require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :cpf => "Cpf",
        :rh => "Rh",
        :phone => "Phone",
        :salary => 1.5,
        :restaurant => nil
      ),
      Employee.create!(
        :name => "Name",
        :cpf => "Cpf",
        :rh => "Rh",
        :phone => "Phone",
        :salary => 1.5,
        :restaurant => nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Rh".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
