class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :kind
      t.string :imagesrc

      t.timestamps null: false
    end
  end
end
