class Product < ApplicationRecord
  validates :title, :description, :author, :origtitle, :serie, :publisher, :year, :binding, :page, :discount, presence: true
  validates :price, :newprice, numericality: {greater_than_or_equal_to: 0.01}
  validates :price, :discount, numericality: {greater_than_or_equal_to: 1}
  validates :title, uniqueness: true
end
