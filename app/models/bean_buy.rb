class BeanBuy < ActiveRecord::Base
  belongs_to :arrival, foreign_key: "arrival_id"
end
