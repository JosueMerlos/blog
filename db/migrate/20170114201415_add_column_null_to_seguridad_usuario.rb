class AddColumnNullToSeguridadUsuario < ActiveRecord::Migration
  def change
  	change_column_null :seguridad_usuarios, :username, false
  	change_column_null :seguridad_usuarios, :nombres, false
  	change_column_null :seguridad_usuarios, :apellidos, false
  end
end
