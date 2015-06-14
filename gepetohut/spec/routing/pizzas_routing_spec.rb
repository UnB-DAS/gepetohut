require "rails_helper"

RSpec.describe PizzasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pizzas").to route_to("pizzas#index")
    end

    it "routes to #new" do
      expect(:get => "/pizzas/new").to route_to("pizzas#new")
    end

    it "routes to #show" do
      expect(:get => "/pizzas/1").to route_to("pizzas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pizzas/1/edit").to route_to("pizzas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pizzas").to route_to("pizzas#create")
    end

    it "routes to #update" do
      expect(:put => "/pizzas/1").to route_to("pizzas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pizzas/1").to route_to("pizzas#destroy", :id => "1")
    end

  end
end
