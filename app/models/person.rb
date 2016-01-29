class Person < ActiveRecord::Base
  has_many :stocks
  has_many :orders
  
  validates :name,
            presence: true
  validates :person_type,
            presence: true,
            inclusion: {in: ['bachelor', 'master', 'doctor', 'teacher', 'staff', 'other']}
end
