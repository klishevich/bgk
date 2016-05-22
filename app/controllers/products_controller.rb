class ProductsController < ApplicationController
	layout 'application_new'
  before_filter :authenticate, only: [:new, :create, :edit, :update]

  def index
   	@products = Product.all.order(:id)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = t(:product_saved_successfuly)
      redirect_to @product
    else
      render 'new'
    end  
  end

  def show
    @product = Product.find(params[:id]) 	
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
    	flash[:success] = t(:product_saved_successfuly)
    	redirect_to @product
    else
    	render 'edit'
    end
  end  

  private

  def product_params
    params.require(:product).permit(:title, :subtitle, :prop1, :prop2, :prop3, :prop4, :prop5, :prop6, 
    	:desc_col1, :desc_col2, :desc_full, :productimg, :productimg_cache, :remove_productimg)
  end     
end
