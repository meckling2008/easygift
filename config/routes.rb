Easygift::Application.routes.draw do

  devise_for :users

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  # for high_voltage
  match '/:id' => 'pages#show', :as => :static, :via => :get

  root :to => 'pages#show', :id => 'home'

end
