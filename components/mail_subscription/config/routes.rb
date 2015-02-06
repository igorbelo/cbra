MailSubscription::Engine.routes.draw do
  resources :signups

  root to: "signups#new"
end
