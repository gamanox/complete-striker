class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :img
      t.integer :product_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
