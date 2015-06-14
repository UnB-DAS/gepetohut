require 'rails_helper'

RSpec.describe "Pizzas", type: :request do
  describe "GET /pizzas" do
    it "works! (now write some real specs)" do
      get pizzas_path
      expect(response).to have_http_status(200)
    end
  end
end
