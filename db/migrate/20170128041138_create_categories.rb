class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre, null: false

      t.timestamps null: false
    end
  end
end
