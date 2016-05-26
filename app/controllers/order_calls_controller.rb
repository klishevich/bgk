class OrderCallsController < ApplicationController
  # layout 'application_new'

  def new
    @order_call = OrderCall.new
  end

  def create
    @order_call = OrderCall.new(order_call_params)
    if @order_call.save
      redirect_to @order_call
    else
      render 'new'
    end
  end

  def show
    @order_call = OrderCall.find(params[:id])
  end

  private

  def order_call_params
    params.require(:order_call).permit(:name, :phone, :time, :question)
  end 
end
