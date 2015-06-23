class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource
  check_authorization

  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def edit
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.status = "Fazendo"

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'Pizza was successfully created.' }
        format.json { render :show, status: :created, location: @pizza }
      else
        format.html { render :new }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: 'Pizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza }
      else
        format.html { render :edit }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pizza.destroy
    respond_to do |format|
      format.html { redirect_to pizzas_url, notice: 'Pizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    def pizza_params
      params.require(:pizza).permit(:name, :price, :quantity)
    end
end
