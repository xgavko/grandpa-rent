class ElderSkill < ApplicationRecord
  belongs_to :elder
  belongs_to :skill

  validates :elder, uniqueness: { scope: :skill, message: 'This combination Elder/Skill already exists' }
end
