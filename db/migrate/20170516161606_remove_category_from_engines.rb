class RemoveCategoryFromEngines < ActiveRecord::Migration[5.0]
  def change
    remove_column :engines, :category, :string
  end
end
