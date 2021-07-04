class Category < ApplicationRecord
  has_many :children, class_name: "Category"
  belongs_to :parent, class_name: "Category", optional: true
  has_many :product

  serialize :children
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
