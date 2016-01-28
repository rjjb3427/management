class Order < ActiveRecord::Base
  belongs_to :menu, foreign_key "menu_id"
  
  validation :menu_id,
             presence: true,
             inclusion: {in: Menu.pluck(:id)}
  validation :person_id,
             presence: true,
             inclusion: {in: Person.pluck(:id)}
end
