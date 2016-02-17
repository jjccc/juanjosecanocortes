Juanjosecanocortes::Application.routes.draw do
  
  get "prediciendo" => "home#prediciendo", :as => "prediciendo"
  get "metirium" => "home#metirium", :as => "metirium"
  get "thealarmfactory" => "home#thealarmfactory", :as => "thealarmfactory"
  get "finderforperiscope" => "home#finderforperiscope", :as => "finderforperiscope"
  get "turismovital" => "home#turismovital", :as => "turismovital"
  
  resources :home, :only => [:index]
  resources :contacts, :only => [:index, :create]
  
  root :to => 'home#index'
end
