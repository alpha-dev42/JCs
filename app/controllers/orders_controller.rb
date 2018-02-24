class OrdersController < ApplicationController
	
  def index
      @orders = Order.includes(:product).all
  end

  def show
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id 

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_url, notice: 'Order was successfully created.' }
        format.json { render :index, status: :created, location: @order }
      else
        format.html { redirect_to orders_url, notice: 'Order was not successfully created.' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
  end

  def destroy
  end
  
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:product_id, :total)
  end
end