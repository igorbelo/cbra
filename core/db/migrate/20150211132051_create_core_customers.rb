class CreateCoreCustomers < ActiveRecord::Migration
  def change
    create_table :core_customers do |t|
      t.string :name

      t.timestamps
    end
  end
end
