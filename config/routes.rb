Rails.application.routes.draw do
  # get 'welcome/index'
  root "welcome#index"
  
  # resources :comments
  devise_for :users
  resources :users
  resources :events do
    resources :comments, :except => [:index]
  end
  get 'users/:id/calendar' => 'users#calendar', as: 'calendar'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
