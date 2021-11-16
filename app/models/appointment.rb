class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :user, presence: true
  validates :offer, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
