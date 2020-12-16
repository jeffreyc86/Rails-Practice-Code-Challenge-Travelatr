Rails.application.routes.draw do
  resources :bloggers, only: [:new, :show, :create]
  resources :destinations, only: :show
  resources :posts, only: [:create, :new, :edit, :update, :show]

  patch "post/:id/like", to: "posts#like", as: "like_post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
