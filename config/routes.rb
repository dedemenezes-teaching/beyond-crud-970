Rails.application.routes.draw do
  # /restaurants/:id
  resources :restaurants do
    # get '/restaurants/top', to: 'restaurants#top'
    collection do
      get :top
    end

    #  /restaurants/:id/chef
    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
    # restaurants/:restaurant_id/reviews
  end
  # /reviews/:id
  resources :reviews, only: :destroy

end
