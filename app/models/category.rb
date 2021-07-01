class Category < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :category
  belongs_to :product, dependent: :destroy
end
