Rails.application.routes.draw do
  resources :places, defaults: { format: :json }
end
