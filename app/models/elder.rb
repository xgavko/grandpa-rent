class Elder < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_many :users
  has_many :elder_skills, dependent: :destroy
  has_many :skills, through: :elder_skills

  validates :full_name, presence: true, uniqueness: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader
end
