Rails.application.routes.draw do
  # VERB 'path', to: 'controller#action', as: :prefix
  root to: 'pets#index'
  get '/pets', to: 'pets#index', as: :pets
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: :pet
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'
  delete '/pets/:id', to: 'pets#destroy'
end
