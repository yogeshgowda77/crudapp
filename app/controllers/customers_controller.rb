class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find_by(params[:id])
    @order = Order.find_by(params[:id]) 
    @product = Product.find_by(params[:id])
    @address = Address.find_by(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create(customer_params)
    redirect_to customers_path
  end

  def edit
    @customer = Customer.find(params[:id])
  end
   
  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customers_path
  end

  def destroy   
    @customer = Customer.find(params[:id]) 
    @customer.destroy
    redirect_to customers_path
  end
  

  private
  def customer_params
    params.require(:customer).permit(:name,:phone,:email,:address)
  end
end

