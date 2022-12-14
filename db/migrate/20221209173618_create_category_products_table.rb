class CreateCategoryProductsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :category_products_tables do |t|
      create_join_table :categories, :products
      t.timestamps
    end
  end
end
