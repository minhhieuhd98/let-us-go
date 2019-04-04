Rails.application.routes.draw do
  resources :places
  # get 'welcome/index'
  root "welcome#index"
  
  # resources :comments
  devise_for :users
  resources :users
  get 'users/:id/calendar' => 'users#calendar', as: 'calendar'
  resources :events do
    resources :comments, :except => [:index]
    resources :attendances
    # get 'events/:id/attendances/new' => 'attendances#new', as: 'new_event_attendance' 
    # post 'events/:id/attendances' => 'attendances#create', as: 'attendances'
  end
  put 'events/:id/public' => 'events#public_event', as: 'public_event'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
