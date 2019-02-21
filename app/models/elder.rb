class Elder < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  has_many :users
  has_many :elder_skills, dependent: :destroy
  has_many :skills, through: :elder_skills

  validates :full_name, presence: true, uniqueness: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    ratings = []
    rents.each { |rent| ratings << rent[:rating] if rent[:rating].positive? }
    if ratings.count.positive?
      ratings.inject { |sum, el| sum + el }.to_f / ratings.size
    else
      ''
    end
  end
end
