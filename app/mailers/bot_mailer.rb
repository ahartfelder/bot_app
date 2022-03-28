class BotMailer < ApplicationMailer
  def send_message text
    HTTParty.post(
      "https://api.telegram.org/bot#{Rails.application.credentials.bot[:token]}/sendMessage",
      headers: {
        "Content-Type" => "application/json"
      },
      body: {
        chat_id: Rails.application.credentials.bot[:chat_id],
        text: text
    }.to_json
    )
  end
end
