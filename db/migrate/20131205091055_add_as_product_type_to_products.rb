class AddAsProductTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :as_product_type, :string
  end
end
