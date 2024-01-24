Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
      get 'prepsheets/roach' => 'high_voltage/pages#show', id: 'roach'
      get 'prepsheets/bedbug' => 'high_voltage/pages#show', id: 'bedbug'
      get 'prepsheets/bedbug_esp' => 'high_voltage/pages#show', id: 'bedbug_esp'


      
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
