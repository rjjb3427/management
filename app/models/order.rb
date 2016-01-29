class Order < ActiveRecord::Base
  belongs_to :menu, foreign_key: "menu_id"
  belongs_to :person, foreign_key: "person_id"
  
  validates :menu_id,
            presence: true,
            inclusion: {in: Menu.pluck(:id).flatten}
  validates :person_id,
            presence: true,
            inclusion: {in: Person.pluck(:id).flatten}
  validates :price,
            presence: true,
            numericality: {greater_than_or_equal_to: 0} 
end
