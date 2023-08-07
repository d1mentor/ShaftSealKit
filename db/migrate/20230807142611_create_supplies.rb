class CreateSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :supplies do |t|
      t.string :additional
      t.string :tags
      t.integer :status
      t.integer :offer_id
      t.json :files
      t.string :shipping_type

      t.timestamps
    end
  end
end
