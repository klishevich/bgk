Rails.application.routes.draw do
  if Page.table_exists?
    Page.all.each do |page|
      get page.url, to: 'pages#show', id: page.id
    end
    # home_page_id = 0
    # home_page = Page.where(menu_order:1).first
    # home_page_id = home_page.id if !home_page.nil?
    # home_page_id > 0 ? root(to: 'pages#show', id: home_page.id) : root('pages#newhome')
  end

  resources :pages
  resources :orders
  resources :order_calls
  resources :products

  root('pages#newhome')
  get '/admin', to: 'pages#admin'
  get '/about', to: 'pages#about'

end
