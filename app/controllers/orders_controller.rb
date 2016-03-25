class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.renter_id = current_user.id
    respond_to do |format|
      if @order.save
        format.html { redirect_to current_user_orders_url, message: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end 
  end

  def current_user_orders
    @orders = current_user.orders
  end

  private

  def order_params
    params.require(:order).permit(:renter_id, :listing_id, :dropoff, :pickup)
  end
end