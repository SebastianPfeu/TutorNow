class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :offer
  has_one :provider, through: :offer, source: :user

  validates :offer, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
