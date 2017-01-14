class AyudaController < ApplicationController
	layout 'administracion', except: [:editar]
  
  def index
  end

  def editar
  end

  def pagina
  	pagina_id = params[:id]
  	render text: "Estamos en la pagina ##{pagina_id} de la ayuda"
  end
end
