class Supplier < ActiveRecord::Base
  has_many :beans, foreign_key: "supplier_id"
end
