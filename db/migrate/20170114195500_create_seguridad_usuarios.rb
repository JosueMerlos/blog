class CreateSeguridadUsuarios < ActiveRecord::Migration
  def change
    create_table :seguridad_usuarios do |t|
      t.string :username, limit: 20
      t.string :nombres, limit: 250
      t.string :apellidos, limit: 250

      t.timestamps null: false
    end
    add_index :seguridad_usuarios, :username, unique: true
  end
end
