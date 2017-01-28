# controlador para el home
class HomeController < ApplicationController
  def index
  	@entradas = Entrada.count_comentarios
  end

  def parametro
  	parameters = params[:id].humanize
  	render text: 'El parametro es: ' + parameters
  end
end
