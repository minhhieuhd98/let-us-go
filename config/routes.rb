Rails.application.routes.draw do
  # get 'welcome/index'
  root "welcome#index"
  
  # resources :comments
  devise_for :users
  resources :users
  get 'users/:id/calendar' => 'users#calendar', as: 'calendar'
  resources :events do
    resources :comments, :except => [:index]
  end
  put 'events/:id/public' => 'events#public_event', as: 'public_event'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
