class BlendBean < ActiveRecord::Base
  belongs_to :bean, class_name: "Bean",  foreign_key: "bean_id"

  validates :id,
            uniqueness: {scope: [:bean_id, :blended_name]}
  validates :bean_id,
            presence: true,
            inclusion: {in: Bean.distinct.pluck(:id)}
  validates :blended_name,
            presence: true
end
