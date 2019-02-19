class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :elder

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates_datetime :end_date, after: :start_date
  validates_datetime :start_date, after: DateTime.now
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
