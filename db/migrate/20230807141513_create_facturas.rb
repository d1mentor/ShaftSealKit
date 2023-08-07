class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.string :facturownia_id
      t.string :additional
      t.string :tags
      t.integer :status
      t.integer :bid_id
      t.integer :offer_id
      t.json :files
      t.float :sum
      t.string :sum_currency

      t.timestamps
    end
  end
end
