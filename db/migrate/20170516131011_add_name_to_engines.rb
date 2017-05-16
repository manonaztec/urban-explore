class AddNameToEngines < ActiveRecord::Migration[5.0]
  def change
    add_column :engines, :name, :string
  end
end
