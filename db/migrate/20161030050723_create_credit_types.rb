class CreateCreditTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_types do |t|
      t.text :description
      t.decimal :interez
      t.boolean :activo

      t.timestamps
    end
  end
end
