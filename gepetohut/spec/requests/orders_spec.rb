require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "GET /orders" do
    include_context "api request authentication helper methods"
    include_context "api request global before and after hooks"
    before :each do
      roles = [ "customer", "manager", "admin" ]
      roles.each do |role|
            Role.find_or_create_by( { name: role } )
        end
      @user = FactoryGirl.create(:admin)
  end
    it "works! (now write some real specs)" do
      sign_in(@user)
      get orders_path
      expect(response).to have_http_status(200)
    end
  end
end
