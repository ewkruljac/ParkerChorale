Rails.application.routes.draw do
  
  root 'home_page_items#show'

  resources :home_page_items,  only: [:edit, :update, :show]
  resources :about_page_items, except: [:index]
  resources :audios, except: [:show]
  resources :generous_supporters, except: [:show]
  resources :benefactors, except: [:show]
  resources :events

  get '/about_us',                   to: 'about_page_items#index'
  get '/manage_events',              to: 'events#manage_events'
  get '/manage_song_files',          to: 'audios#manage_song_files'
  get '/manage_generous_supporters', to: 'generous_supporters#manage_generous_supporters'
  get '/manage_benefactors',         to: 'benefactors#manage_benefactors'
  get '/support_us',                 to: 'benefactors#index'
end
