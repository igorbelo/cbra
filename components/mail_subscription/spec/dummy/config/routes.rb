Rails.application.routes.draw do

  mount MailSubscription::Engine => "/mail_subscription"
end
