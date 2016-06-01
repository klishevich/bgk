class CartsController < ApplicationController
  def show
  	@porder_items = current_porder.porder_items
  end
end
