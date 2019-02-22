class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :elder

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates_datetime :end_date, after: :start_date
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }

  enum status: { pending: 0, confirmed: 1, declined: 2 }
end
