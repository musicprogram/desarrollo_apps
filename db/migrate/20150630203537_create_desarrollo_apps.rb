class CreateDesarrolloApps < ActiveRecord::Migration
  def change
    create_table :desarrollo_apps do |t|
      t.string :nombre
      t.string :email_telefono
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
