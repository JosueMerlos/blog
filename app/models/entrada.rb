class Entrada < ActiveRecord::Base
  belongs_to :seguridad_usuario
  belongs_to :category
  has_many :comentarios

  validates :fecha, presence: { message: 'Requerido' }
  validates :titulo, presence: { message: 'Requerido' }
  validates :category_id, presence: { message: 'Requerido' }
  validates :seguridad_usuario_id, presence: { message: 'Requerido' }
end
