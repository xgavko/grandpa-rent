class Skill < ApplicationRecord
  has_many :elder_skills

  validates :name, presence: true, uniqueness: true
end
