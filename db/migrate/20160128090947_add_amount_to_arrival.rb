class AddAmountToArrival < ActiveRecord::Migration
  def change
    add_column :arrivals, :amount, :integer, null: false, default: 0
  end
end
