class OrdersController < ApplicationController
  layout 'application_new'

  def new
    @order = Order.new
  end


end
