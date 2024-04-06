class Product < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :nam
  validates :name , length: { maximum: 50 }
end
