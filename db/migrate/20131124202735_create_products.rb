class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :producible_id
      t.string :producible_type

      t.timestamps
    end
  end
end
