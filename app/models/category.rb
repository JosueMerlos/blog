class Category < ActiveRecord::Base
	has_many :entradas

	validates :nombre, presence: { message: 'Requerido'}
	has_paper_trail
end
