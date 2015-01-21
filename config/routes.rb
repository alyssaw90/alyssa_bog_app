Rails.application.routes.draw do

  get 'creatures/index'

  get '/' => 'home#index'

  resources :creatures

  get 'creatures/tag/:tag' => 'creatures#tag', as: :tagc

  resources :tags

  get '*path', to: "application#not_found"

end
