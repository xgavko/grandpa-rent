class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :user, foreign_key: true
      t.references :elder, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
