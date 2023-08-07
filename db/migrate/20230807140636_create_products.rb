class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :kit_id
      t.integer :spare_part_id
      t.float :price
      t.string :price_currency
      t.string :additional
      t.string :tags

      t.timestamps
    end
  end
end
