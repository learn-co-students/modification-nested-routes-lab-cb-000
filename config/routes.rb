Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:edit, :new, :index, :show]
  end
  resources :songs
end
