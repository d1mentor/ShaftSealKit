class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :location
      t.string :vat
      t.string :tags
      t.string :additional

      t.timestamps
    end
  end
end
