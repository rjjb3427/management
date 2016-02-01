class Person < ActiveRecord::Base
  has_many :stocks, primary_key: "id", foreign_key: "stockholder_id"
  has_many :orders, foreign_key: "person_id"
  
  validates :name,
            presence: true
  validates :person_type,
            presence: true,
            inclusion: {in: ['bachelor', 'master', 'doctor', 'teacher', 'staff', 'other']}
end
