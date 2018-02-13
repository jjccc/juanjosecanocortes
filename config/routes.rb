Juanjosecanocortes::Application.routes.draw do
  
  # get "prediciendo" => "home#prediciendo", :as => "prediciendo"
  # get "metirium" => "home#metirium", :as => "metirium"
  # get "thealarmfactory" => "home#thealarmfactory", :as => "thealarmfactory"
  get "finderforperiscope" => "home#finderforperiscope", :as => "finderforperiscope"
  # get "turismovital" => "home#turismovital", :as => "turismovital"
  
  get "cem" => "home#cem", :as => "cem"
  get "eventoxperienzia" => "home#eventoxperienzia", :as => "eventoxperienzia"
  get "quiz" => "home#quiz", :as => "quiz"
  
  resources :home, :only => [:index]
  resources :contacts, :only => [:index, :create]
  
  root :to => 'home#index'
end
