class PagesController < ApplicationController
  before_filter :authenticate, only: [:index, :new, :create, :edit, :update, :admin, :orders_list]

  # PUBLIC PAGES
  def newhome
    @order_call = OrderCall.new
  end  

  def show
    @page=Page.find(params[:id])
  end

  def about
    @order_call = OrderCall.new
  end

  def primenenie
  end

  # ADMIN PAGES
  def admin
  end

  def orders_list
    @porders = Porder.where('porder_status_id = 2').last(30).reverse
    @orders = Order.last(30).reverse
    @order_calls = OrderCall.last(30).reverse
    @contacts = Contact.last(30).reverse
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
    old_images = @page.pageimgs
    @page.assign_attributes(page_params)
    new_images = @page.pageimgs
    old_first_img_url = @page.changes['pageimgs'][0].first.to_s
    new_first_img_url = @page.changes['pageimgs'][1].first.to_s
    if (old_first_img_url != new_first_img_url)
      @page.pageimgs = old_images + new_images
    end
    Rails.logger.info("first_img_url changes #{old_first_img_url}, #{new_first_img_url}")
    if @page.save
      flash[:success] = t(:page_saved_successfuly)
      redirect_to @page
    else
      render 'edit'
    end
  end

  private

  def page_params
    params.require(:page).permit(:content, :title, :keywords, :description, :url, :h1, :menu_title, :menu_order,
      :code, {pageimgs: []}, :remove_pageimgs, :pageimgs_cache)
  end  

end
