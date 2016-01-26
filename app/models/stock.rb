class Stock < ActiveRecord::Base
  belongs_to :arrival, foreign_key "arrival_id"
  belongs_to :person, foreign_key "stockholder_id"
end
