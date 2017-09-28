class CreateBusinessPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :business_partners do |t|
      t.string :name, null: false, default: ''
      t.references :business_partner_type, null: false
      t.references :coin, null: false
      t.string :telephone, default: ''
      t.string :cellphone, defalut: ''
      t.string :email, default: ''
      t.boolean :active, null: false, default: true
      t.text :direction, defalut: ''
      t.string :id_number, null: false, default: ''

      t.timestamps
    end
  end
end
