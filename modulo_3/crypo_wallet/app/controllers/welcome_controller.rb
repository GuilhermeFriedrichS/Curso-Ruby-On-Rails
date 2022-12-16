class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome] #Pega o parametro que vem pela URL (Query Params)
    @meu_curso = params[:curso]
  end
end
