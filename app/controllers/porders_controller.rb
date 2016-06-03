class PordersController < ApplicationController
	def edit
		@porder = current_porder
	end

	def update
		@porder = Porder.find(params[:id])
		if @porder.update_attributes(porder_params)
			flash[:success] = t(:saved_successfuly)
			redirect_to '/cart'
		else
			render 'edit'
		end
	end 

	def porder_params
    	params.require(:porder).permit(:company_name, :person_name, :position, :phone, :email, 
      	porder_items_attributes: [:id, :product_id, :quantity, :_destroy])
  	end 

end
