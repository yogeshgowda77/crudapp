class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find_by(id: params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    address = Address.create(address_params)
    redirect_to addresses_path
  end

  def edit
    @address = Address.find(params[:id])
  end
   
  def Update
    @Address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to addresses_path

  end

  def destroy   
    @address = Address.find(params[:id]) 
    @address.destroy
    redirect_to addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:name,:phone,:address_1,:address_line2,:city,:state,:country,:pin)
  end
end

