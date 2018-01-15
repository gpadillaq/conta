class CreateStorehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :storehouses do |t|
      t.string :name, null: false, default: ''
      t.boolean :actived, null: false, default: true
      t.references :storehouses_type, null: false
    end
  end
end
