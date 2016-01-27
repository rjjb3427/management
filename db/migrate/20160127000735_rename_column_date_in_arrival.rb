class RenameColumnDateInArrival < ActiveRecord::Migration
  def up
    rename_column :arrivals, :date, :arrival_date
  end
  def down
    rename_column :arrivals, :arrival_date, :date
  end
end
