class CreateCoreAdresses < ActiveRecord::Migration
  def change
    create_table :core_adresses do |t|
      t.string :zip
      t.integer :number
      t.references :customer, index: true

      t.timestamps
    end
  end
end
