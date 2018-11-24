Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :new, :show, :edit, :update]
  end
  resources :songs
end
