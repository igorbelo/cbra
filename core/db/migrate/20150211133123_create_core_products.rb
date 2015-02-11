class CreateCoreProducts < ActiveRecord::Migration
  def change
    create_table :core_products do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
