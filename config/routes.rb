Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activity_posts do
    resources :activity_users, only: [:create ]
  end
  delete "cancel_activity/:id", to: 'activity_posts#cancel_activity', as: :cancel_activity
  get "activities-by-date", to: 'activity_posts#activities_by_date', as: :date_activities
  resources :activity_users, only: [:destroy ]
  get    "my_upcoming_activities",      to: "activity_posts#show_my_upcoming"
  get    "my_hosting",      to: "activity_posts#my_hosting"
  get    "display_components",      to: "pages#display_components"
end
