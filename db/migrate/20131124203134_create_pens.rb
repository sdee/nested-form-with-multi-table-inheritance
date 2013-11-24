class CreatePens < ActiveRecord::Migration
  def change
    create_table :pens do |t|

      t.timestamps
    end
  end
end
