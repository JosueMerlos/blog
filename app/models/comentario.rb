class Comentario < ActiveRecord::Base
  belongs_to :entrada
  belongs_to :seguridad_usuario
end
