Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'tags/index'
    get 'tags/edit'
    get 'tags/update'
  end
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :public do
    get 'relationship/follower'
    get 'relationship/followed'
  end
  namespace :public do
    get 'followings/create'
    get 'followings/destroy'
  end
  namespace :public do
    get 'tags/index'
    get 'tags/create'
  end
  namespace :public do
    get 'bookmarks/index'
    get 'bookmarks/create'
    get 'bookmarks/destroy'
  end
  namespace :public do
    get 'comments/create'
    get 'comments/destroy'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
  end
  namespace :public do
    get 'posts/show'
    get 'posts/create'
    get 'posts/destroy'
  end
  namespace :public do
    get 'users/mypage'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/withdraw'
  end
  namespace :public do
    get 'session/new'
    get 'session/create'
    get 'session/destroy'
  end
  namespace :public do
    get 'registrations/new'
    get 'registrations/create'
  end
  namespace :public do
    get 'homes/top'
  end
  devise_for :admins
  devise_for :users
  
  
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get "followings" => "relationships#followings", as: "followings"
    get "followers" => "relationships#followers", as: "followers"
  end
end
