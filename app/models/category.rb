class Category < ApplicationRecord
  has_many :children, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category",  optional: true
  has_many :product
  
  validates :name, presence: true
end
