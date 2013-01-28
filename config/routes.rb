Easygift::Application.routes.draw do

  devise_for :users

  resources :home, :only=>[:index]

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  # for high_voltage
  match '/:id' => 'pages#show', :as => :static, :via => :get

  root :to => 'pages#show', :id => 'index'

end
