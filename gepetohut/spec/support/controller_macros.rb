module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      roles = [ "customer", "manager", "admin" ]
	  
	  roles.each do |role|
          Role.find_or_create_by( { name: role } )
      end

      admin = FactoryGirl.create(:admin)
      admin.add_role :admin
	  admin.remove_role :customer
      sign_in admin  # Using factory girl as an example
    end
  end
end