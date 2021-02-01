class CreateFormularios < ActiveRecord::Migration[6.1]
  def change
    create_table :formularios do |t|
      t.string :nombre
      t.string :telefono
      t.string :mascota
      t.string :sexo
      t.text :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
