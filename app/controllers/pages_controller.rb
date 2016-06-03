class PagesController < ApplicationController
  before_filter :authenticate, only: [:index, :new, :create, :edit, :update, :admin, :orders_list]

  # def home
  # end

  def newhome
    @order_call = OrderCall.new
    # render layout: "application_new"
  end

  def index
    @pages = Page.all.order(:id)
  end

  def new
    @page = Page.new
    @page.menu_order = 0
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:success] = t(:page_saved_successfuly)
      redirect_to @page
      #edit_page_path @page
    else
      render 'new'
    end  
  end

  def edit
    @page=Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:success] = t(:page_saved_successfuly)
      redirect_to @page
    else
      render 'edit'
    end
  end 

  def show
  	@page=Page.find(params[:id])
  end

  def about
    @order_call = OrderCall.new
    # render layout: "application_new"
  end

  def admin
  end

  def orders_list
    @porders = Porder.where('porder_status_id = 2').last(30).reverse
    @orders = Order.last(30).reverse
    @order_calls = OrderCall.last(30).reverse
    @contacts = Contact.last(30).reverse
  end

  private

  def page_params
    params.require(:page).permit(:content, :title, :keywords, :description, :url, :h1, :menu_title, :menu_order)
  end  

end
