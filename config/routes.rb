Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    member do
      # ユーザーidが含まれているているURLを扱えるようになる
     get :following, :followers
    end
    resources :details, only: [:index, :new, :create, :edit, :update]
  end

  resources :rooms, only: [:show, :index, :new]
  resources :prefectures, only: %i(index)
  resources :relationships, only: [:create, :destroy]
  resources :matching, only: %i(index)
  resources :chat, only: %i(create show)

end
