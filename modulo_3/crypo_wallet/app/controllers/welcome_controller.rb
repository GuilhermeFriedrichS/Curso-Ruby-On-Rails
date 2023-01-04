class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails [COOKIE]"
    session[:curso] = "Curso de Ruby on Rails [SESSION]"
    @meu_nome = params[:nome] #Pega o parametro que vem pela URL (Query Params)
    @meu_curso = params[:curso]
  end
end
