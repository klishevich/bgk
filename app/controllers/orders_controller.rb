class OrdersController < ApplicationController
  layout 'application_new'

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:fio, :position, :phone, :email, :org_inn, :org_name, :org_phone,
    	:org_site, :interest, :supply_date, :supply_city, :supply_address, :comment, :need_callback, :need_kp,
      :myfile)
  end 

end