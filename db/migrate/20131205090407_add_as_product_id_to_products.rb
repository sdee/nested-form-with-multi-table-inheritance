class AddAsProductIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :as_product_id, :string
  end
end
