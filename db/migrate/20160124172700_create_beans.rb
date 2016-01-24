class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.string :bean_type
      t.integer :supplier_id
      t.string :description

      t.timestamps null: false
    end
  end
end
