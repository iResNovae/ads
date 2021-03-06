Ads::Application.routes.draw do
 resources :adverts
 resources :users
 resources :sessions, only: [:new, :create, :destroy]
 root to:  "static_page#home"
 match '/signup',  to: 'users#new'
 match '/signin',  to: 'sessions#new'
 match '/signout', to: 'sessions#destroy', via: :delete
end
