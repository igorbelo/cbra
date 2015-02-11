class CreateCoreAddresses < ActiveRecord::Migration
  def change
    create_table :core_addresses do |t|
      t.integer :zip
      t.integer :number
      t.references :customer, index: true

      t.timestamps
    end
  end
end
