Rails.application.routes.draw do
  namespace :forest do
    post '/actions/mark' => 'publishers#mark'
  end
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'pages#home'
  resources :plans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
