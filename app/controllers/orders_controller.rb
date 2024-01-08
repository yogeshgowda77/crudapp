class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id]) 
 end

 def new
   @order = Order.new
 end

 def create
   order = Order.create(order_params)
   redirect_to orders_path
 end

 def edit
   @order = Order.find(params[:id])
 end
  
 def Update
   @order = Order.find(params[:id])
   @order.update(order_params)
   redirect_to orders_path

 end

 def destroy   
   @order = Order.find(params[:id]) 
   @order.destroy
   redirect_to orders_path
 end

 private
 def order_params
   params.require(:order).permit(:Order_Number,:Date_of_Order,:Order_Status,:Billing_Address,:Shipping_Address)
 end
end

