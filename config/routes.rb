Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'
  resources :news, :orders, :line_items, :carts, :products, :store

  resources :products do
    member do
      delete :delete_image_attachment
    end
  end

  root 'welcome#index'

  get 'catalog', to: 'store#index'
  get '/catalog/bestsellery', to: 'store#bestsellery'
  get '/catalog/fentezy', to: 'store#fentezy'
  get '/catalog/komiksy', to: 'store#komiksy'
  get '/catalog/obuchenie', to: 'store#obuchenie'
  get '/catalog/biznes', to: 'store#biznes'
  get '/catalog/kulinariya', to: 'store#kulinariya'
  get '/catalog/inostrannye-yazuki', to: 'store#inostrannye_yazuki'
  get '/catalog/poeziya', to: 'store#poeziya'
  get '/catalog/nauka', to: 'store#nauka'

  #root to: 'store#index', as: 'store'
end
