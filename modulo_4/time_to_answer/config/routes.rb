Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
    resources :admins   #Admins
    resources :subjects # Assuntos/Áreas
    resources :questions # Perguntas
  end
  
  devise_for :admins
  devise_for :users
  
  get 'welcome/index'
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index' #Altera a rota padrão
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
