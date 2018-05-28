class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type_of
      t.float :price
      t.string :upc
      t.float :shipping
      t.string :description
      t.string :manufacturer
      t.string :model
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
