class CreateCategoriesVendorsTable < ActiveRecord::Migration
  def up
    create_table :categories_vendors, :id => false do |t|
      t.references :vendor
      t.references :category
      
      t.timestamps
    end
  end

  def down
  end
end
