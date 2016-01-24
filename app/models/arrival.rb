class Arrival < ActiveRecord::Base
  belongs_to :bean, foreign_key: "bean_id", validate: true
end
