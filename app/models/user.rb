class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :carts
  has_many :orders
  has_one_attached :avatar

  after_create :send_confirmation_email

  # after_create :send_welcome_email

  def send_confirmation_email
    UserMailer.confirmation_email(self).deliver_now
  end

  def send_welcome_email
  	UserMailer.welcome_email(self).deliver_now
  end
end
