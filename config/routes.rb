Rails.application.routes.draw do
  get 'bookings/index'

  get 'bookings/create'

  get 'engines/index'

  get 'engines/show'

  devise_for :users
  root to: 'pages#home'
  resources :engines, only: [:index, :show] do
    resources :booking, only: [:index], shallow: true
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
