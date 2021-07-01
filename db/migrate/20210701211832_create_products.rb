class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.references :category, null: false, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
