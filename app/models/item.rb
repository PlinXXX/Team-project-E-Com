class Item < ApplicationRecord
	validates :title, length: { minimum: 5}
	validates :price, numericality: true
	validates :description, length: {minimum: 5, maximum: 500}
	validates :image_url, uniqueness: true, presence: true
end
