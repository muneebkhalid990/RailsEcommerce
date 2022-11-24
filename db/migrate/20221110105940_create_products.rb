class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.string :total_products
      t.string :u_id

      t.timestamps
    end
  end
end
