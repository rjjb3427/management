class CreateBeanBuys < ActiveRecord::Migration
  def change
    create_table :bean_buys do |t|
      t.integer :arrival_id
      t.integer :cost

      t.timestamps null: false
    end
  end
end
