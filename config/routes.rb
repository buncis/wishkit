Rails.application.routes.draw do
  resources :sarans
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'contact' => 'static_pages#contact'
  get 'popular-location' => 'static_pages#popular_location'

  devise_for :admins
  devise_for :guides
  resources :beritas
  resources :daerahs
  resources :kategoris
  resources :wisatas do
    member do
      put "like", to: "wisatas#like"
      put "dislike", to: "wisatas#dislike"
      get 'album'
    end
    resources :reviews, only: [:create, :destroy]
    
  end
  devise_for :users
  resources :users, only: [:show, :index]
  resources :guides, only: [:show, :index] do
    member do
      put "like", to: "guides#like"
      put "dislike", to: "guides#dislike"
    end
    resources :reviews, only: [:create, :destroy]
  end
  resources :guide_wisatas, only: [:create, :destroy]
end
