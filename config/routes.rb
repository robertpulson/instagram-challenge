Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show]
  resources :posts, { shallow: true } do
    resources :likes
    resources :comments
  end

  root to: "posts#index"

end
