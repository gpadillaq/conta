class CreateCreditTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_types do |t|
      t.text :name
      t.decimal :interez
      t.boolean :activo
    end
  end
end
