class Arrival < ActiveRecord::Base
  belongs_to :bean, foreign_key: "bean_id"
  has_one :bean_buy
  has_one :stock
  has_many :menu

  validates :bean_id,
            presence: true,
            inclusion: {in: Bean.distinct.pluck(:id).flatten}
  validates :arrival_type,
            presence: true,
            inclusion: {in: ['stock','bean_buy']}
  validates :arrival_date,
            presence: true
  validates :soldout_date,
            presence: true
  validates :soldout,
            presence: true
end
