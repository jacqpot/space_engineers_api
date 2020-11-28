Rails.application.routes.draw do
  resources :block_components
  resources :blocks
  resources :components
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
