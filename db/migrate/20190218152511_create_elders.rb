class CreateElders < ActiveRecord::Migration[5.2]
  def change
    create_table :elders do |t|
      t.string :full_name
      t.string :address
      t.string :description
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
