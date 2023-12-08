Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :public do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :public do
    get 'registrations/new'
    get 'registrations/create'
  end
  
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  
    namespace :admin do
    root to: 'homes#top'
     get "admin/search" => "searches#search"
    resources :users, only: [:mypage, :show, :edit, :update, :withdraw]
    resources :posts, only: [:index, :show, :destroy]
    resources :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :bookmarks, only: [:index, :create, :destroy]
    resources :tags, only: [:index, :create]
    resources :followings, only: [:create, :destroy]
    resources :followers, only: [:follow, :followers]
  end
  
  scope module: :public do
    root to: 'homes#top'
    resources :posts, only: [:index, :show]
    resources :tags, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :edit, :update]
    resources :users, only: [:index, :show,:edit, :update]
  end
end
