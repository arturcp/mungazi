Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artigo, only: :show, param: :slug, controller: :articles, as: :articles
  resources :artigos, only: :index, controller: :articles, as: :article_list
  resource :message, only: :create

  root 'home#index'
end
