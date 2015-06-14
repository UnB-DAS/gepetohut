require 'rails_helper'

describe CustomersController, :type => :controller do 
	describe 'new' do
		before :each do
			get :new
		end

		#it {is_expected.to respond_with(:sucess)}
		it {is_expected.to render_template(:new)}

	end	
	describe 'create' do
		attributes = {:name => "Jose pedro",:adress => "fga",email: "deliciabsb@hotmail.com",telephone: "6667"}
		@customer = Customer.new(attributes)
		before :each do
			post :create, :customer attributes format: :json
		end
		it 'is expected to return the project' do
        project.id = nil
        expect(JSON.parse(response.body)).to eq(JSON.parse({project: project}.to_json))
      end

	end	

end