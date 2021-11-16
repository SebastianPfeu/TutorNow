class Offer < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :subject, presence: true
  validates :level, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
