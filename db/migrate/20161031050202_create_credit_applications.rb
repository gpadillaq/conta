class CreateCreditApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_applications do |t|
      t.belongs_to :business_partner, foreign_key: true
      t.date :date
      t.date :expiration_date
      t.belongs_to :credit_type, foreign_key: true
      t.belongs_to :payment_frequency, foreign_key: true
      t.integer :payment_number
      t.decimal :amount
      t.belongs_to :coin, foreign_key: true
      t.text :note
      t.belongs_to :statu, foreign_key: true

      t.timestamps
    end
  end
end
