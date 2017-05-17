Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :engines, only: [:index, :show] do
    resources :bookings, only: [:create], shallow: true
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  namespace :account do
    resources :bookings, only: [:index]
  end
  mount Attachinary::Engine => "/attachinary"
end
