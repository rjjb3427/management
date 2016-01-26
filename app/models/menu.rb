class Menu < ActiveRecord::Base
  belongs_to :arrival, foreign_key "arrival_id"
  has_many :orders
end
