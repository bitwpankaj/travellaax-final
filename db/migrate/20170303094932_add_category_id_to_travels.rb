class AddCategoryIdToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :category_id, :integer
  end
end
