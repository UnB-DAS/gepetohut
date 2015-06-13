require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "Name",
      :cpf => "Cpf",
      :rh => "Rh",
      :phone => "Phone",
      :salary => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Rh/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/1.5/)
  end
end
