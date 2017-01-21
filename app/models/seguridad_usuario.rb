class SeguridadUsuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	strip_attributes
	# has_paper_trail ignore: [:nombres]
	# has_paper_trail only: [:username]
	# has_paper_trail on: [:update, :destroy]

	validates :username, uniqueness: { message: 'Este usuario ya existe'},
		                   presence: { message: 'Requerido'}, 
		                   length: {maximum: 20, too_long: 'Demasiados caracteres'},
		                   format: {with: /\A[a-z]{0,20}\z/, message: 'Solo letras'} 
	
	validates :nombres, presence: { message: 'Requerido'}, 
		                  length: {maximum: 250, too_long: 'Demasiados caracteres'},
		                  format: {with: /\A[a-zA-Z]{0,20}\z/, message: 'Solo letras'} 
	
	validates :apellidos, presence: { message: 'Requerido'}, 
		                    length: {maximum: 20, too_long: 'Demasiados caracteres'},
		                    format: {with: /\A[a-zA-Z]{0,20}\z/, message: 'Solo letras'} 	                     	                     

end
