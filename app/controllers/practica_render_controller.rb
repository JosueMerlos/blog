class PracticaRenderController < ApplicationController
  def index
  	# render nothing: true
  	# render 'ayuda/index'
  	# render plain: 'ok, :D'
  	# render html: '<h1>PracticaRender#index</h1><p>Find me in app/views/practica_render/index.html.erb</p>'.html_safe
  	# render json: [{ nombre: 'Carlos', apellido: 'Merlos' }, { nombre: 'Carlos', apellido: 'Merlos' }]
  	# render json: SeguridadUsuario.all
  	# render xml: SeguridadUsuario.all
  	# redirect_to ayuda_index_path
  	redirect_to :back
  end

  def index_dos
  	# render 'index'
  	render :index
  end
end
