class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  attr_accessible :category_id, :image, :name
  has_many :categories
end
