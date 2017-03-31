class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :destination
      t.text :description_short
      t.text :description_full
      t.float :price
      t.string :agent

      t.timestamps
    end
  end
end
