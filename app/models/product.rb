class Product < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true,  length: {minimum: 50}
  validates :price, presence: true
  validates :category, presence: true
  validates :stock, presence: true
  
end
