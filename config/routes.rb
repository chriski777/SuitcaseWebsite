Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/join_us'

  get 'static_pages/services'

  get 'static_pages/news'

  get 'static_pages/blogs'

  get 'static_pages/donate'

  get 'static_pages/beth_el'

  get 'static_pages/general'

  get 'static_pages/youth'

  get 'static_pages/women'

  root 'static_pages#home'

end
