class AddUserIdToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :user_id, :integer
  end
end
