class Arrival < ActiveRecord::Base
  belongs_to :bean, foreign_key: "bean_id"
  has_one :bean_buy
  has_one :stock
  has_many :menu

  
end
