class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :authenticated?
  helper_method :current_porder

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      session[:authenticated] = username == ENV["http_basic_name"] && password == ENV["http_basic_pass"]
    end
  end

  def authenticated?
    session[:authenticated]
  end

  def current_porder
    if !session[:porder_id].nil?
      Porder.find(session[:porder_id])
    else
      Porder.new
    end
  end
  
end
