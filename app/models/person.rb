class Person < ActiveRecord::Base
  has_many :stocks
  has_many :orders
end
