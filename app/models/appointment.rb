class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :offer

  validates :offer, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
