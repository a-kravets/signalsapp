class Trader < ApplicationRecord
  # after_create :send_welcome_email
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  # def send_welcome_email
  #   TraderMailer.welcome(self).deliver_now
  # end
end
