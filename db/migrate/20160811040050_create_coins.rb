class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.string :descripcion
      t.string :simbolo

      t.timestamps
    end
  end
end
