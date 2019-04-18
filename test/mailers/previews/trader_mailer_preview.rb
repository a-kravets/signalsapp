# Preview all emails at http://localhost:3000/rails/mailers/trader_mailer
class TraderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/trader_mailer/welcome
  def welcome
    trader = Trader.first
    TraderMailer.welcome(trader)
  end

end
