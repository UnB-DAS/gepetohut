require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :cpf => "MyString",
      :rh => "MyString",
      :phone => "MyString",
      :salary => 1.5
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_cpf[name=?]", "employee[cpf]"

      assert_select "input#employee_rh[name=?]", "employee[rh]"

      assert_select "input#employee_phone[name=?]", "employee[phone]"

      assert_select "input#employee_salary[name=?]", "employee[salary]"
    end
  end
end
