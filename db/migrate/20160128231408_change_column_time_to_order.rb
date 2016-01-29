class ChangeColumnTimeToOrder < ActiveRecord::Migration
  def up
    change_column :orders, :time, :datetime
  end
  def down
    change_column :orders, :time, :time
  end
end
