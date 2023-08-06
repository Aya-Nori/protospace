Rails.application.routes.draw do
  devise_for :users
  get 'protospaces/index'
  root to: "protospaces#index"
end
