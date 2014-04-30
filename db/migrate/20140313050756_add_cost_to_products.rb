class AddCostToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cost, :decimal
  end
end
