class BotMailer < ApplicationMailer
  def send_message text, user
    HTTParty.post(
      "https://api.telegram.org/bot#{Rails.application.credentials.bot[:token]}/sendMessage",
      headers: {
        "Content-Type" => "application/json"
      },
      body: {
        chat_id: user,
        text: text
    }.to_json
    )
  end
end
