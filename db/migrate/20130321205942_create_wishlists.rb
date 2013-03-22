class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.references :user
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :wishlists, :user_id
  end
end
