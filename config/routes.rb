Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get "tags/:tag", to: 'blogs#index', as: :tag 
end
