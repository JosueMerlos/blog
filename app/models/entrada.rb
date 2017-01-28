class Entrada < ActiveRecord::Base
  belongs_to :seguridad_usuario
  belongs_to :category
  has_many :comentarios

  validates :fecha, presence: { message: 'Requerido' }
  validates :titulo, presence: { message: 'Requerido' }
  validates :category_id, presence: { message: 'Requerido' }
  validates :seguridad_usuario_id, presence: { message: 'Requerido' }

  has_paper_trail

  scope :count_comentarios, -> {
  	joins(:comentarios, :seguridad_usuario, :category)
    .select('entradas.id, entradas.fecha, entradas.titulo,
            entradas.texto, entradas.visitas, entradas.publicado,
            count(comentarios.id) as cantidad_comentarios,
            seguridad_usuarios.username as username,
            categories.nombre as categoria')
    .group('entradas.id, entradas.fecha, entradas.titulo,
           entradas.texto, seguridad_usuarios.username,
           categories.nombre')
  }

end
