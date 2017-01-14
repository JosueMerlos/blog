class SeguridadUsuario < ActiveRecord::Base

	validates :username, :nombres, :apellidos, presence: true

end
