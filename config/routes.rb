Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  get 'tweets' => 'tweets#index'
  post 'tweets' => 'tweets#create'
  delete  'tweets/:id'  => 'tweets#destroy'
  get   'tweets/:id/edit'  => 'tweets#edit'
  patch   'tweets/:id'  => 'tweets#update'
end
