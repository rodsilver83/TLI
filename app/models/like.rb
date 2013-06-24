class Like < ActiveRecord::Base
  attr_accessible :cookie, :product_id
  validates_uniqueness_of :cookie, :scope => :product_id
end
