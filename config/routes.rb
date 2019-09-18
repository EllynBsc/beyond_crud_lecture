Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
  # get /restaurants/42/reviews/new
  # post /restaurants/42/reviews
      resources :reviews, only: [:new, :create]

   # get '/restaurants/top', to: "restaurants#top"
    collection do
      get 'top'
    end
    # get '/restaurants/:id/chef', to: 'restaurants#chef'
    member do
      get 'chef'
    end
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
   namespace :admin do
      resources :restaurants, only: [:index]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
