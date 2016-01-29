class Supplier < ActiveRecord::Base
  has_many :beans, foreign_key: "supplier_id"
  
  validates :name,
            presence: true
  validates :location,
            presence: true
end
