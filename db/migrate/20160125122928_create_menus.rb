class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :arrival_id
      t.integer :price
      t.string :temperature
      t.string :variety

      t.timestamps null: false
    end
  end
end
