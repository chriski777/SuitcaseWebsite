Rails.application.routes.draw do
  get 'users/new'

  get '/home', to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/join_us', to: 'static_pages#join_us'

  get '/services', to: 'static_pages#services'

  get '/news', to: 'static_pages#news'

  get '/blogs', to: 'static_pages#blogs'

  get '/donate', to: 'static_pages#donate'

  get '/beth_el', to: 'static_pages#beth_el'

  get '/general', to: 'static_pages#general'

  get '/youthLGBTQ', to: 'static_pages#youthLGBTQ+'

  get '/womxn', to: 'static_pages#womxn'

  get '/contact', to: 'static_pages#contact'

  get '/loginScreen', to: 'static_pages#loginScreen'

  get '/signup', to: 'users#new'

  resources :users
  root 'static_pages#home'

end
