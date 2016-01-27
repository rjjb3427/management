class Menu < ActiveRecord::Base
  belongs_to :arrival, foreign_key: "arrival_id"
  has_many :orders, foreign_key: "menu_id"
  
  validates :arrival_id,
            presence: true,
            inclusion: {in: Arrival.pluck(:id)}
  validates :price,
            presence: true,
            numericality: {greater_than_or_equal_to: 0}
  validates :temperature,
            presence: true,
            inclusion: {in: ['hot','iced']}
  validates :variety,
            presence: true,
            inclusion: {in: ['black','cafe_au_lait',]}
end
