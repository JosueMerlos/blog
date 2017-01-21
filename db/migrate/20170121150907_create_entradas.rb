class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.date :fecha, null: false
      t.string :titulo, null: false
      t.text :texto
      t.integer :visitas, default: 0 
      t.boolean :publicado, default: true
      t.references :seguridad_usuario, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
