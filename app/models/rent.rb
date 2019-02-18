class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :elder

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates_datetime :end_date, after: :start_date
  validates_datetime :start_date, after: DateTime.now
end
