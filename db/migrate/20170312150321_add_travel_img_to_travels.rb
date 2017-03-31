class AddTravelImgToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :travel_img, :string
  end
end
