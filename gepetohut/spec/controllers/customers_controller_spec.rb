require 'rails_helper'

describe CustomersController, :type => :controller do 
	describe 'new' do
		before :each do
			get :new
		end

		it {is_expected.to respond_with(:sucess)}
		it {is_expected.to render_template(:new)}
	end		

end