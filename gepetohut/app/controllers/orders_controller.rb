class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource
  check_authorization

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    @orders.each do |order|
      order.define_status
      order.save!
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    @pizzas = Pizza.all
    @pizzas.each do |pizza|
      if pizza.quantity == 0 && pizza.is_menu == false
        @pizzas.delete( pizza )
      end
    end
  end

  # GET /orders/new
  def new
    @order = Order.new( user_id: current_user.id )
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)


    @order.status = "Fazendo"
    @order.order_date = Time.now
    @order.expected_arrival = (Time.now + 2.hours)
    @order.total_to_pay = @order.calculate_total_to_pay
    @order.qtd_pizzas = @order.calculate_quantity


    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:total_to_pay, :qtd_pizzas, :order_date, :expected_arrival, :status, :user_id, pizzas_attributes: [:id, :name, :price, :status, :quantity, :is_menu])
    end
end
