class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user
      t.references :vendor

      t.timestamps
    end
    add_index :favorites, :user_id
    add_index :favorites, :vendor_id
    add_index :favorites, [:user_id, :vendor_id], unique: true
  end
end
