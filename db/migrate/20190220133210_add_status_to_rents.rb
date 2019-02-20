class AddStatusToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :status, :integer, default: 0
  end
end
