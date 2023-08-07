class CreateContactPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_people do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :supplier_id
      t.integer :client_id
      t.string :additional
      t.string :tags

      t.timestamps
    end
  end
end
