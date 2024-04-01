Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "sample", controller: "sample" , action:"hello", defaults: {format: :json}
  get "sample/hello" , defaults: {format: :json}
  get "sample2", to: "sample#hello", defaults: {format: :json}
  get "user/:id", to: "users#show", defaults: {format: :json}
end
