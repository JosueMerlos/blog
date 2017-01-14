class PracticaVariablesController < ApplicationController
  def index
		@title = 'Practica Variables de Instancia'
		opcion = 2
		@mensaje = case opcion
							 when 1 then 'Ventas'
							 when 2 then 'Reclamos'
							 when 3 then 'Servicio al Cliente'
							 else 'No existe la opcion'
							 end
  end
end
