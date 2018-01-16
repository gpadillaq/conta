class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
    end
  end
end
