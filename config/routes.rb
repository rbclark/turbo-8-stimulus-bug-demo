Rails.application.routes.draw do
  resources :groups, only: [] do
    resources :users, only: [:index, :show]
  end
end
