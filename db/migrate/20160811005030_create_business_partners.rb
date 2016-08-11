class CreateBusinessPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :business_partners do |t|
      t.string :nombre, null: false, default: ''
      t.references :business_partner_type, null: false
      t.references :coin, null: false
      t.string :telefono, default: ''
      t.string :celular, defalut: ''
      t.string :email, default: ''
      t.boolean :activo, null: false, default: true
      t.text :direccion, defalut: ''
      t.string :identificador, null: false, default: ''

      t.timestamps
    end
  end
end
