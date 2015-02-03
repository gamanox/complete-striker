class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :product_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
