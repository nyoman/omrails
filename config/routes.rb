Rails.application.routes.draw do

  devise_for :users

  as :user do 
  	get 'signin' 	 => 'devise/sessions#new'
  	delete 'signout' => 'devise/sessions#destroy'
  	get 'signup' 	 => 'devise/registrations#new'
  end

  root 'pages#home'  # or get '/' => 'pages#home'
  get '/about' 	 => 'pages#about'
  get '/contact' => 'pages#contact'

end
