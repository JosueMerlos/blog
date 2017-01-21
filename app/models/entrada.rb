class Entrada < ActiveRecord::Base
  belongs_to :seguridad_usuario
  has_many :comentarios
end
