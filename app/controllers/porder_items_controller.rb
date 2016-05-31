class PorderItemsController < ApplicationController
	def create
		@porder = current_porder
		@porder_item = @porder.porder_items.new(porder_item_params)
		@porder.save
		session[:porder_id] = @porder.id
	end

	def update
		@porder = current_porder
		@porder_item = @porder.porder_items.find(params[:id])
		@porder_item.update_attributes(porder_item_params)
		@porder_items = @porder.porder_items
	end

	def destroy
		@porder = current_porder
		@porder_item = @porder.porder_items.find(params[:id])
		@porder_item.destroy
		@porder_items = @porder.porder_items
	end

	private
	def porder_item_params
		params.require(:porder_item).permit(:quantity, :product_id, :details)
	end
end
