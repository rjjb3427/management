class Bean < ActiveRecord::Base
  belongs_to :supplier, class_name: "Supplier", foreign_key: "supplier_id"
  has_many :arrivals, class_name: "Arrival", foreign_key: "arrivals_id"
  has_one :blend_bean, class_name: "BlendBean", foreign_key: "bean_id"
  has_one :straight_bean, class_name: "StraightBean", foreign_key: "bean_id"

  validates :name,
            presence: true
  validates :bean_type,
            presence: true,
            inclusion: {in: ['blend','straight']}
  validates :supplier_id,
            presence: true,
            inclusion: {in: Supplier.pluck(:id).flatten}
end
