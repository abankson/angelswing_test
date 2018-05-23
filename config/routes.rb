Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #sets root to home. Basically changing your homepage to home
  root to: 'pages#home'
end
