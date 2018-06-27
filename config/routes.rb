Rails.application.routes.draw do
  root 'home_page_items#show'

  resources :home_page_items,  only: [:edit, :update, :show]
  resources :about_page_items, except: [:index]

  get '/about_us', to: 'about_page_items#index'

end
