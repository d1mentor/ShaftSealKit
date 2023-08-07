class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.boolean :incoming
      t.integer :type
      t.integer :status
      t.integer :supplier_id
      t.integer :client_id
      t.integer :bid_id
      t.json :files
      t.string :tags
      t.string :additional

      t.timestamps
    end
  end
end
