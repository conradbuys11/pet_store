Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get ____, to: ____
  get '/', to: 'pets#homepage'
  # get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show', as: 'pet' #pet_path()
  #get '/pets/:species', to: 'pets#by_species', as: 'species' #species_path()
  get "/:species", to: "pets#index"
  # get '/dogs', to: 'pets#dogs' #rails routes - keep in back of mind
  # get '/cats', to: 'pets#cats'
  # get '/birds', to: 'pet#birds'
  #get ''
end
