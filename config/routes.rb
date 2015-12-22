Rails.application.routes.draw do
  devise_for :admins
  devise_for :guides
  resources :beritas
  resources :daerahs
  resources :kategoris
  resources :wisatas do
    resources :reviews, only: [:create, :destroy]
  end
  devise_for :users
  resources :users, only: [:show, :index]
  resources :guides, only: [:show, :index]
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'contact' => 'static_pages#contact'
  get 'popular-location' => 'static_pages#popular_location'
end
