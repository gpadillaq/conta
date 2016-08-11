class CreateBusinessPartnerTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :business_partner_types do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
