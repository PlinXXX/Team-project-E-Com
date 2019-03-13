class Order < ApplicationRecord
	belongs_to :user
	belongs_to :cart
	validates :description, presence: true
end
