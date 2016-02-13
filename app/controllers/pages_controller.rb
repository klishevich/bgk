class PagesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "bgksite", except: [:show, :home]
  def home
  end

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:success] = t(:page_saved_successfuly)
      redirect_to edit_page_path @page
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
      redirect_to edit_page_path
    else
      render 'edit'
    end
  end 

  def show
  	@page=Page.find(params[:id])
  end

  private

  def page_params
    params.require(:page).permit(:content, :title, :keywords, :description, :url)
  end  

end
