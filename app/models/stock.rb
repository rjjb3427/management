class Stock < ActiveRecord::Base
  belongs_to :arrival, primary_key: "id", foreign_key: "arrival_id"
  belongs_to :person, primary_key: "id", foreign_key: "stockholder_id"
  
  validates :arrival_id,
            presence: true,
            inclusion: {in: Arrival.pluck(:id)}
  validates :stockholder_id,
            presence: true,
            inclusion: {in: Person.pluck(:id)}
  validates :cost,
            presence: true,
            numericality: {only_integer: true,
                           greater_than_or_equal_to: 0}
  validates :dividend,
            presence: true,
            numericality: {only_integer: true,
                           greater_than_or_equal_to: 0}
end
