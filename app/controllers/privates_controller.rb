class PrivatesController < ApplicationController
  before_action :authenticate_seguridad_usuario!

  def user_for_paper_trail
  	if seguridad_usuario_signed?
  		current_seguridad_usuario.id
  	else
  		'Public User'
  	end
  end
end
