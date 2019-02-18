class CreateElderSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :elder_skills do |t|
      t.references :elder, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
