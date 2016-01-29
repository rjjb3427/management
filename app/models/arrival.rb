class Arrival < ActiveRecord::Base
  belongs_to :bean, foreign_key: "bean_id"
  has_one :bean_buy
  has_one :stock
  has_many :menus, foreign_key: "menu_id"

  validates :bean_id,
            presence: true,
            inclusion: {in: Bean.all.pluck(:id).flatten}
  validates :amount,
            presence: true,
            numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :arrival_type,
            presence: true,
            inclusion: {in: ['stock','bean_buy']}
  validates :arrival_date,
            presence: true
end
