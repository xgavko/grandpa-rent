class AddDefaultToRatingOnRents < ActiveRecord::Migration[5.2]
  def change
    change_column :rents, :rating, :integer, :default => 0
  end
end
