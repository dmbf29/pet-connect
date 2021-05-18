Rails.application.routes.draw do
  # VERB 'path', to: 'controller#action', as: :prefix
  get '/pets', to: 'pets#index', as: :pets
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: :pet
end
