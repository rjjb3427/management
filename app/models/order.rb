class Order < ActiveRecord::Base
  belongs_to :menu, foreign_key "menu_id"
end
