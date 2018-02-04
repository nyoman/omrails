Rails.application.routes.draw do

  root 'pages#home'  # or get '/' => 'pages#home'
  get '/about' => 'pages#about'

end
