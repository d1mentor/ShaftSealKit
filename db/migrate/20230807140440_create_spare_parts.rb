class CreateSpareParts < ActiveRecord::Migration[6.1]
  def change
    create_table :spare_parts do |t|
      t.string :name
      t.integer :category_id
      t.string :description
      t.string :tags
      t.json :images
      t.json :files
      t.string :manufacturer
      t.integer :kit_id
      t.float :weight

      t.timestamps
    end
  end
end
