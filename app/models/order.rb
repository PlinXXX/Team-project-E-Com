class Order < ApplicationRecord
	belongs_to :carts
	has_many :items, through: :carts
end
