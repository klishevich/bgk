class PordersController < ApplicationController
	before_filter :authenticate, only: [:show]
	def cart
		@porder = current_porder
		# Rails.logger.info("cart current_porder #{current_porder}")
	end

	def update
		@porder = Porder.find(params[:id])
		@porder.order_placed
		if @porder.update_attributes(porder_params)
			# flash[:success] = t(:saved_successfuly)
			session[:porder_id] = nil
			redirect_to '/porder_placed'
		else
			render 'cart'
		end
	end 

	def show
		@porder = Porder.find(params[:id])
	end

	def porder_placed
	end

	def porder_params
    	params.require(:porder).permit(:company_name, :person_name, :position, :phone, :email, :comment,
      	porder_items_attributes: [:id, :product_id, :quantity, :details, :_destroy])
  	end 

end
