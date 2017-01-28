class AddCategoryToEntrada < ActiveRecord::Migration
  def change
    add_reference :entradas, :category, index: true, foreign_key: true
  end
end
