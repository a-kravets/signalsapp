class SendpulseJob < ApplicationJob
  queue_as :default

  def perform
    require './api/sendpulse_api'
    require 'yaml'

    # Api_Client_Id = ENV['SENDPULSE_ID']
    # Api_Client_Secret = ENV['SENDPULSE_SECRET']
    # Api_Protocol = 'https'
    # Api_Token = ''

    sendpulse_api = SendpulseApi.new(ENV['SENDPULSE_ID'], ENV['SENDPULSE_SECRET'], 'https', '')

    result = sendpulse_api.get_token
    YAML::dump(result)
    emails = @trader.email
    result = 'https://api.sendpulse.com/addressbooks/{id}/emails'

  end
end
