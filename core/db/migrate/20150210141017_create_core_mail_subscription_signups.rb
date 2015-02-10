class CreateCoreMailSubscriptionSignups < ActiveRecord::Migration
  def change
    create_table :core_mail_subscription_signups do |t|
      t.string :email

      t.timestamps
    end
  end
end
