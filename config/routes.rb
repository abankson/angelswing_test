Rails.application.routes.draw do
  resources :contents
  resources :projects
  devise_for :users, path: 'users', path_names: {sign_in: 'signin', sign_out: 'signout', sign_up: 'signup'}

  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'projects/:id/new-content', to: 'contents#new', as: 'new-project-content'

  #sets root to home. Basically changing your homepage to home
  root to: 'pages#home'
end
