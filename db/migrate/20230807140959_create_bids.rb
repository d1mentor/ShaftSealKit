class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.integer :client_id
      t.integer :status
      t.string :additional
      t.string :tags

      t.timestamps
    end
  end
end
