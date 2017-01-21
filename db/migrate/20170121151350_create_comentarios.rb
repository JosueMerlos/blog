class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :entrada, index: true, foreign_key: true
      t.date :fecha, null: false
      t.time :hora, null: false
      t.text :texto
      t.boolean :revisado, default: false
      t.references :seguridad_usuario, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
