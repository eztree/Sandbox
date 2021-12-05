class MessagesController < ApplicationController
  def reply
    message_body = params["Body"]
    from_number = params["From"]
    boot_twilio
    sms = @client.messages.create(
      from: Rails.application.credentials.twilio_number,
      to: from_number,
      body: "Hello, thanks for texting me even though you're lost on the hike. Your number is #{from_number}."
    )

  end

  private

  def boot_twilio
    account_sid = Rails.application.credentials.TWILIO_ACCOUNT_SID
    auth_token = Rails.application.credentials.TWILIO_AUTH_TOKEN
    @client = Twilio::REST::Client.new account_sid, auth_token
  end
end
