class CreatePaymentFrequencies < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_frequencies do |t|
      t.text :descripcion
      t.boolean :activo

      t.timestamps
    end
  end
end
