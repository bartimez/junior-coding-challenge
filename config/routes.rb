Rails.application.routes.draw do
  # going to localhost:3000 should route us to our show all page
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :destroy]
  # See http://guides.rubyonrails.org/routing.html#the-purpose-of-the-rails-router for more information
end
