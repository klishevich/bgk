class PorderItemsController < ApplicationController
	def create
		@porder = current_porder
		product_id = porder_item_params[:product_id]
		if (@porder.porder_items.where(product_id: product_id).count == 0) 
			@porder.porder_items.new(porder_item_params)
			@porder.save(validate: false)
		end
		# @porder_item = 
		# @porder.porder_items.
		
		# Rails.logger.info("product_id #{product_id}")
		# p.porder_items.where(product_id: ).count
		session[:porder_id] = @porder.id
	end

	# def update
	# 	@porder = current_porder
	# 	@porder_item = @porder.porder_items.find(params[:id])
	# 	@porder_item.update_attributes(porder_item_params)
	# 	@porder_items = @porder.porder_items
	# end

	# def destroy
	# 	@porder = current_porder
	# 	@porder_item = @porder.porder_items.find(params[:id])
	# 	@porder_item.destroy
	# 	@porder_items = @porder.porder_items
	# end

	private
	def porder_item_params
		params.require(:porder_item).permit(:quantity, :product_id, :details)
	end
end
