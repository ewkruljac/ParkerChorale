Rails.application.routes.draw do
  root 'home_page_items#show'

  resources :home_page_items, only: [:edit, :update, :show]

end
