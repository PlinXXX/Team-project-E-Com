class Order < ApplicationRecord
	belongs_to :user
	belongs_to :cart
	validates :description, presence: true

	after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self.user).deliver_now
    AdminMailer.admin_email(self.user).deliver_now
  end
end
