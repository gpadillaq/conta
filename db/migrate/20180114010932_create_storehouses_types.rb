class CreateStorehousesTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :storehouses_types do |t|
      t.string :description, null: false, default: ''
    end
  end
end
