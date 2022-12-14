Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/foods" => "foods#index"
  get "/foods/:id" => "foods#show"
  post "/foods" => "foods#create"
  patch "/foods/:id" => "foods#update"
  delete "/foods/:id" => "foods#destroy"
end
