class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :category_id
      t.string :description
      t.string :tags
      t.string :manufacturer

      t.timestamps
    end
  end
end
