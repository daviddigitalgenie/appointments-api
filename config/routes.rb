Rails.application.routes.draw do
  resources :users
  scope '/api/v1' do
    resources :appointments
    resources :providers
    scope '/users/' do
      post '/login', to: 'users#login'
      post '/register', to: 'users#register'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
