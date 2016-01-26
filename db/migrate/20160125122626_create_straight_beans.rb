class CreateStraightBeans < ActiveRecord::Migration
  def change
    create_table :straight_beans do |t|
      t.integer :bean_id
      t.string :loast

      t.timestamps null: false
    end
  end
end
