Rails.application.routes.draw do
  defaults format: :json do
    get "/places" => "places#index"
    post "/places" => "places#create"
    get "/places/:id" => "places#show"
    patch "/places/:id" => "places#update"
    delete "/places/:id" => "places#destroy"
  end
end
