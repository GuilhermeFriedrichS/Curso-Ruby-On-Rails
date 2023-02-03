Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject' #as altera o nome da rota
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
    resources :admins   #Admins
    resources :subjects # Assuntos/Áreas
    resources :questions # Perguntas
  end
  
  devise_for :admins, skip: [:registrations]
  devise_for :users
  
  get 'welcome/index'
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index' #Altera a rota padrão
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
