class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :product_name
      t.string :number
      t.string :price
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
