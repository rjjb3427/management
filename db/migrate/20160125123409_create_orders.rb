class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :menu_id
      t.integer :person_id
      t.time :time
      t.string :price_type

      t.timestamps null: false
    end
  end
end
