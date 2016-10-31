class CreateStatus < ActiveRecord::Migration[5.0]
  def change
    create_table :status do |t|
      t.text :descripcion
      t.boolean :activo

      t.timestamps
    end
  end
end
