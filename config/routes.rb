Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'run#index'
  get '/run/:id', to: 'run#show', as: 'run'
  post '/run', to: 'run#create', as: 'new_run'
  delete '/run/:id', to: 'run#destroy', as: 'delete_run'
end
