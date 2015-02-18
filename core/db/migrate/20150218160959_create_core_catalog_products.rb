class CreateCoreCatalogProducts < ActiveRecord::Migration
  def change
    create_table :core_catalog_products do |t|
      t.string :title

      t.timestamps
    end
  end
end
