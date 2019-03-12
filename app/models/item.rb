class Item < ApplicationRecord
<<<<<<< HEAD
	has_many :item_to_carts
	has_many :carts, through: :item_to_carts
=======
	validates :title, presence: true, length: { minimum: 5}
	validates :price, presence: true, numericality: true
	validates :description, presence: true, length: {minimum: 5, maximum: 500}
	validates :image_url, uniqueness: true, presence: true
>>>>>>> 1d983bb9f9d03e346d1943392e0144424e36180c
end
