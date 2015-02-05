class CreateMailSubscriptionSignups < ActiveRecord::Migration
  def change
    create_table :mail_subscription_signups do |t|
      t.string :email

      t.timestamps
    end
  end
end
