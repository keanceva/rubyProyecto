class AddPictureToFormularios < ActiveRecord::Migration[6.1]
  def change
    add_column :formularios, :picture, :string
  end
end
