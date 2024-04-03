class CustomerOrdersController < ApplicationController
  before_action :set_customer_order, only: %i[ show edit update destroy ]

  # GET /customer_orders or /customer_orders.json
  def index
    @customer_orders = CustomerOrder.all
  end

  # GET /customer_orders/1 or /customer_orders/1.json
  def show
  end

  # GET /customer_orders/new
  def new
    @customer_order = CustomerOrder.new
  end

  # GET /customer_orders/1/edit
  def edit
  end

  # POST /customer_orders or /customer_orders.json
  def create
    @customer_order = CustomerOrder.new(customer_order_params)

    respond_to do |format|
      if @customer_order.save
        format.html { redirect_to customer_order_url(@customer_order), notice: "Customer order was successfully created." }
        format.json { render :show, status: :created, location: @customer_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_orders/1 or /customer_orders/1.json
  def update
    respond_to do |format|
      if @customer_order.update(customer_order_params)
        format.html { redirect_to customer_order_url(@customer_order), notice: "Customer order was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_orders/1 or /customer_orders/1.json
  def destroy
    @customer_order.destroy!

    respond_to do |format|
      format.html { redirect_to customer_orders_url, notice: "Customer order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_order
      @customer_order = CustomerOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_order_params
      params.require(:customer_order).permit(:name, :address, :amount_ordered, :phoneNumber)
    end
end
