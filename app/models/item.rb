class Item < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5}
	validates :price, presence: true, numericality: true
	validates :description, presence: true, length: {minimum: 5, maximum: 500}
	validates :image_url, uniqueness: true, presence: true
end
