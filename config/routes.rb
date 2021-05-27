Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists, only: %i[index new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: :destroy
end
