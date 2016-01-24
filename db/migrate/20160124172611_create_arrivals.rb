class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.integer :bean_id
      t.string :arrival_type
      t.date :date
      t.boolean :soldout

      t.timestamps null: false
    end
  end
end
