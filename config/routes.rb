Rails.application.routes.draw do
  # /restaurants/:id
  resources :restaurants do
    collection do # We don't need an id, so it's for the collection
      # GET '/restaurants/top', to: 'restaurants#top'
      get :top
    end

    member do # We need an id, so it's for a member of the collection
      # GET '/restaurants/:id/chef', to: 'restaurants#chef'
      get :chef
    end

    # GET  '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
    # POST '/restaurants/:restaurant_id/reviews'    , to: 'reviews#reviews'
    resources :reviews, only: [:new, :create]
  end
  # DELETE '/reviews/:id', to: 'reviews#destroy'
  resources :reviews, only: :destroy

end
