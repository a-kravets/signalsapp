class TraderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.trader_mailer.welcome.subject
  #
  def welcome(trader)
    @trader = trader

    mail(to: @trader.email, subject: "Welcome to Trading Signals App")
  end
end
