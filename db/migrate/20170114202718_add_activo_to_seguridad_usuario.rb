class AddActivoToSeguridadUsuario < ActiveRecord::Migration
  def change
    add_column :seguridad_usuarios, :activo, :boolean, default: true
  end
end
