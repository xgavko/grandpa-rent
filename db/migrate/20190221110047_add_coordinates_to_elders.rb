class AddCoordinatesToElders < ActiveRecord::Migration[5.2]
  def change
    add_column :elders, :latitude, :float
    add_column :elders, :longitude, :float
  end
end
