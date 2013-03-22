class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :vendor
      t.string :name
      t.string :description
      t.decimal :price, default: 0

      t.timestamps
    end
    add_index :products, :vendor_id
  end
end
