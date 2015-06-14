require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyString",
      :email => "MyString",
      :adress => "MyString",
      :phone => "MyText"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_adress[name=?]", "customer[adress]"

      assert_select "textarea#customer_phone[name=?]", "customer[phone]"
    end
  end
end
