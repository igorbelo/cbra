# This migration comes from mail_subscription (originally 20150205175524)
class CreateMailSubscriptionSignups < ActiveRecord::Migration
  def change
    create_table :mail_subscription_signups do |t|
      t.string :email

      t.timestamps
    end
  end
end
