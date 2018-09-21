Rails.application.routes.draw do
  
  
  devise_for :users
  resources :projects
  resources :applications
  
  root 'pages#index'
  get 'about' => 'pages#about' 
  get 'nosmetiers' => 'pages#nosmetiers'
  get 'motdg' => 'pages#motdg' 
  get 'contact' => 'pages#contact'
  get 'plumbing' => 'pages#plumbing'
  get 'construction' => 'pages#construction'
  get 'traveaux' => 'pages#traveaux'
  get 'maintenance' => 'pages#maintenance'
  get 'instalation' => 'pages#instalation'
  get 'facility' => 'pages#facility'
  get 'climatisation' => 'pages#climatisation'
  get 'prestation' => 'pages#prestation'
  get 'maintenancep' => 'pages#maintenancep'
  get 'maintenancec' => 'pages#maintenancec'
  get 'politique' => 'pages#politique'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
