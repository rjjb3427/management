class StraightBean < ActiveRecord::Base
  belongs_to :bean, foreign_key: "bean_id"

  validates :id,
            uniqueness: {scope: [:bean_id, :loast]}
  validates :bean_id,
            presence: true,
            inclusion: {in: Bean.select(:id).distinct}
end
