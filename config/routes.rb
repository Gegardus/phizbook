Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users, only: %i[index show] do
    resources :friendships, only: %i[create] do
      collection do
        get 'accept_friend'
        get 'decline_friend'
      end
    end
  end
  
  # PUT and PATCH requests are used to update existing data
  put '/users/:id', to:  'users#update_img'

  resources :posts, only: %i[index new create show destroy] do
      resources :likes, only: %i[create]
  end
  resources :comments, only: %i[new create destroy] do
    resources :likes, only: %i[create]
  end 
end
