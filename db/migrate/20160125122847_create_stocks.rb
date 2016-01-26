class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :arrival_id
      t.integer :stockholder_id
      t.integer :cost
      t.integer :dividend

      t.timestamps null: false
    end
  end
end
