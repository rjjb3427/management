class Order < ActiveRecord::Base
  belongs_to :menu, foreign_key: "menu_id"
  
  validates :menu_id,
             presence: true,
             inclusion: {in: Menu.pluck(:id).flatten}
  validates :person_id,
             presence: true,
             inclusion: {in: Person.pluck(:id).flatten}
end
