Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :destroy]
  # See http://guides.rubyonrails.org/routing.html#the-purpose-of-the-rails-router for more information
end
