Rails.application.routes.draw do
  resources :daerahs
  resources :kategoris
  resources :wisatas do
    resources :reviews, only: [:create, :destroy]
  end
  devise_for :users
  resources :users, only: [:show, :index]
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'contact' => 'static_pages#contact'
end
