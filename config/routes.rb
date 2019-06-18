Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activity_posts do
    resources :activity_users, only: [:create ]
  end
  resources :activity_users, only: [:destroy ]
  get    "my_activities",      to: "activity_posts#show_my"
  get    "display_components",      to: "pages#display_components"
end
