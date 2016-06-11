Rails.application.routes.draw do
  get 'porder_items/create'

  get 'porder_items/update'

  get 'porder_items/destroy'

  # get 'carts/show'
  # get 'carts/edit'

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
  resources :orders, only: [:new, :create, :show]
  resources :order_calls, only: [:new, :create, :show]
  resources :products
  resources :contacts, only: [:create, :show]
  get '/contacts', to: 'contacts#new'

  root('pages#newhome')
  get '/admin', to: 'pages#admin'
  get '/about', to: 'pages#about'
  get '/orders_list', to: 'pages#orders_list'
  get '/primenenie', to: 'pages#primenenie'

  # resource :cart, only: [:show, :edit]
  get '/cart', to: 'porders#cart'
  get '/porder_placed', to: 'porders#porder_placed'
  resources :porders, only: [:update, :index, :show ]
  resources :porder_items, only: [:create, :update, :destroy]
  resources :categories, only: [:index, :new, :create, :edit, :update]
  get '/products_index_adm', to: 'products#index_adm'

end
