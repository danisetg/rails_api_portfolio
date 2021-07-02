class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :category
  has_many :product

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
