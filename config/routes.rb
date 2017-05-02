# See http://guides.rubyonrails.org/routing.html#the-purpose-of-the-rails-router for more information
Rails.application.routes.draw do
  # going to localhost:3000 should route us to our show all page
  root to: 'posts#index'
  
  # nest our routes to reflect the relationship between posts & comments
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

end
