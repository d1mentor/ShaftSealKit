class CreateKits < ActiveRecord::Migration[6.1]
  def change
    create_table :kits do |t|
      t.integer :offer_id
      t.integer :category_id
      t.float :weight
      t.float :height
      t.float :width
      t.string :tags
      t.string :additional

      t.timestamps
    end
  end
end
