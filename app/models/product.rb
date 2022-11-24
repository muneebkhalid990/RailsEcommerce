class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables

  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :total_products, presence: true

end
