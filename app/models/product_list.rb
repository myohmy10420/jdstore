class ProductList < ApplicationRecord
  has_many :product_lists
  belongs_to :order
end
