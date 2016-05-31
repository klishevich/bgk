class CartsController < ApplicationController
  def show
  	@order_items = current_porder.porder_items
  end
end
