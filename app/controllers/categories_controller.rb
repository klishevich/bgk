class CategoriesController < ApplicationController
	before_filter :authenticate

	def index
		@categories = Category.all.order(:id)
	end

	def new
		@category = Category.new
		@category.order = 0 
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = t(:saved_successfuly)
			redirect_to edit_category_path @category
		else
			render 'new'
		end  
	end

	def edit
		@category=Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(category_params)
			flash[:success] = t(:saved_successfuly)
			redirect_to edit_category_path @category
		else
			render 'edit'
		end
	end

	private

	def category_params
		params.require(:category).permit(:name, :order)
	end 
end
