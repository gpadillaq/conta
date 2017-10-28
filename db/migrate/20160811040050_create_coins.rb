class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.string :description
      t.string :symbol

      t.timestamps
    end
  end
end
