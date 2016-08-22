class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.belongs_to :business_partner, foreign_key: true
      t.belongs_to :coin, foreign_key: true
      t.belongs_to :bill_type, foreign_key: true
      t.text :nota
      t.string :numero
      t.date :fecha
      t.date :fecha_de_vencimiento
      t.boolean :anulada
      t.belongs_to :payment_type, foreign_key: true

      t.timestamps
    end
  end
end
