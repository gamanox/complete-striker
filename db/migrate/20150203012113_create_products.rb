class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :category_id
      t.attachment :prod_img
      t.timestamps
    end
  end
end
