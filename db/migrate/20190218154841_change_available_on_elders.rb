class ChangeAvailableOnElders < ActiveRecord::Migration[5.2]
  def change
    change_column :elders, :available, :boolean, :default => true
  end
end
