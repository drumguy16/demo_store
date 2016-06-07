class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :category
      t.string :name, null: false
      t.text :description
      t.float :price, null: false

      t.timestamps null: false
    end
  end
end
