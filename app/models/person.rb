class Person < ActiveRecord::Base
  has_many :stocks
  has_many :orders, foreign_key: "person_id"
  
  validates :name,
            presence: true
  validates :person_type,
            presence: true,
            inclusion: {in: ['bachelor', 'master', 'doctor', 'teacher', 'staff', 'other']}
end
