class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :imei
      t.string :serie
      t.date :fecha_de_ingreso
      t.decimal :compra
      t.decimal :utilidad
      t.decimal :venta

      t.timestamps
    end
  end
end
