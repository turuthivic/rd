class AddSubcategoryColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :Product, :string
    add_column :products, :subcategory_id, :boolean
  end
end
