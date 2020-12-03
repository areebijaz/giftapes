Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/my_giftapes/', to: 'giftapes#index'

  resources :curated_lists, only: [:new, :create, :show, :destroy] do
    resources :curated_list_items, only: [:create]
  end

  resources :collages, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :collage_items, only: [:new, :create, :show, :destroy]
  end

  resources :quizzes, only: [:new, :create, :show] do
    resources :questions, only: [:create, :destroy]
    end
    resources :questions, only: [:show] do
      resources :answers, only: [:create]
    end
    resources :answers, only: [:show]

  # get 'mixtapes/:id', to: "mixtapes#show"
  # get 'mixtapes/new', to: "mixtapes#new"
  # post 'mixtapes/new', to: 'mixtapes#create'

  resources :mixtapes, only: [:show, :new, :create, :edit, :update]


end
