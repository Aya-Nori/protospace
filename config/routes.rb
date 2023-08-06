Rails.application.routes.draw do
  get 'protospaces/index'
  root to: "protospaces#index"
end
