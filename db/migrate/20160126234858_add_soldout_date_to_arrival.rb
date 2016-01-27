class AddSoldoutDateToArrival < ActiveRecord::Migration
  def change
    add_column :arrivals, :soldout_date, :date
  end
end
