class CreateEngines < ActiveRecord::Migration[5.1]
  def change
    create_table :engines do |t|
      t.string :category
      t.text :description
      t.integer :price
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
