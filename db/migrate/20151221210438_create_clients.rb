class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :Company_name
      t.string :Address
      t.string :Number_Phone

      t.timestamps null: false
    end
  end
end
