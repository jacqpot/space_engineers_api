Rails.application.routes.draw do
  get '/blocks/small' => "blocks#small"
  get '/blocks/large' => "blocks#large"
  get '/blocks/either' => "blocks#either"
  resources :block_components
  resources :blocks
  resources :components
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
