Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines a route for the "questions" controller's "ask" method as "/ask" (done)
  get "ask" , to: "questions#ask" # ask is a path, question is the controller, #ask is the method name
  get "answer", to: "questions#answer" # answer is a path, question is the controller, #answer is the method name
  # Defines the root path route ("/")
  # root "posts#index"
end
