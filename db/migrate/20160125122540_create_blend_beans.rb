class CreateBlendBeans < ActiveRecord::Migration
  def change
    create_table :blend_beans do |t|
      t.integer :bean_id
      t.string :blended_name

      t.timestamps null: false
    end
  end
end
