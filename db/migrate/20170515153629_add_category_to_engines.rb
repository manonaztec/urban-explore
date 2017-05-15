class AddCategoryToEngines < ActiveRecord::Migration[5.0]
  def change
    add_reference :engines, :category, foreign_key: true
  end
end
