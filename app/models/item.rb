class Item < ApplicationRecord

	has_many :item_to_carts
	has_many :carts, through: :item_to_carts


	validates :title, presence: true, length: { minimum: 5}
	validates :price, presence: true, numericality: true
	validates :description, presence: true, length: {minimum: 5, maximum: 500}
	validates :image_url, uniqueness: true, presence: true
end
