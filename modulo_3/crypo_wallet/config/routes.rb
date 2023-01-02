Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'#, to: 'welcome#index' < Poderia ser assim também, mas ele suprimiu pois os nomes são iguais
  #get '/inicio', to: 'welcome#index'
 
  resources :coins #Gera as 7 rotas de CRUD pra tabela Coins
  #get '/coins', to: 'coins#index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
