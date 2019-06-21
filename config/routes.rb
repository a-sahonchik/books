Rails.application.routes.draw do
  resources :news
  get 'welcome/index'
  resources :orders, :line_items, :carts, :products

  root 'welcome#index'

  get 'catalog', to: 'store#index'

  #root to: 'store#index', as: 'store'
end
