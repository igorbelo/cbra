class CreateCoreOrderItems < ActiveRecord::Migration
  def change
    create_table :core_order_items do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.number :quantity

      t.timestamps
    end
  end
end
