class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :vendor
      t.integer :review_score
      t.text :review_text

      t.timestamps
    end
    add_index :reviews, :vendor_id
  end
end
