class CreateCoreOrders < ActiveRecord::Migration
  def change
    create_table :core_orders do |t|
      t.references :customer, index: true
      t.references :address, index: true

      t.timestamps
    end
  end
end
