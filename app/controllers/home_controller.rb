# controlador para el home
class HomeController < ApplicationController
  def index
  	id = params[:id]
  	render text: id
  end

  def parametro
  	parameters = params[:id].humanize
  	render text: 'El parametro es: ' + parameters
  end
end
