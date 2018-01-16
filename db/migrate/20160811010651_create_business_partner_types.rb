class CreateBusinessPartnerTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :business_partner_types do |t|
      t.string :name
    end
  end
end
