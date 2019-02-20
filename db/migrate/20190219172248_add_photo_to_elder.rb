class AddPhotoToElder < ActiveRecord::Migration[5.2]
  def change
    add_column :elders, :photo, :string
  end
end
