class VerEntradaController < ApplicationController
  def index
  	@entrada = Entrada.find(params[:id])
  end
end
