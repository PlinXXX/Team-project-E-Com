class Order < ApplicationRecord
	belongs_to :user
	belongs_to :cart
	validates :description, presence: true

	after_create :send_congratulation_email

  def send_congratulation_email
    UserMailer.congratulation_email(self.user).deliver_now
    AdminMailer.admin_email(self.user).deliver_now
  end
end
