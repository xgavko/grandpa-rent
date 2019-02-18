class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rents
  has_many :elders
  has_many :elders, through: :rents

  validates :first_name, presence: true
  validates :last_name, presence: true
end
