class CreateEmailSignupSubscriptions < ActiveRecord::Migration
  def change
    create_table :email_signup_subscriptions do |t|
      t.string :email

      t.timestamps
    end
  end
end
