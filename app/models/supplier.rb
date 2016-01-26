class Supplier < ActiveRecord::Base
  has_many :beans, class_name: "Bean", primary_key: "id", foreign_key: "supplier_id"
end
