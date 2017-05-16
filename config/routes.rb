Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :engines, only: [:index, :show] do
    resources :bookings, only: [:index, :create], shallow: true
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  mount Attachinary::Engine => "/attachinary"
end



