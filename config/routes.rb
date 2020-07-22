Rails.application.routes.draw do
  resources :songs

  resources :artists do
    # nested resource for posts
    resources :songs, only: [:show, :index]
  end
  
 
  # resources :songs, only: [:index, :show, :new, :create, :edit, :update]
 
  # end
end

