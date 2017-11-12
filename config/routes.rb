Rails.application.routes.draw do
 

  get '/' => 'wines#index'
  get '/scan_menu' => 'wines#scan_menu'
  post '/wines/get_menu' => 'wines#get_menu'

  get '/wines/new' => 'wines#new'
  post '/wines' => 'wines#create'


  get '/wines/:id' => 'wines#show'

  get '/wines/:id/edit' => 'wines#edit'
  patch '/wines/:id' => 'wines#update'

  delete '/wines/:id' => 'wines#destroy'
end
