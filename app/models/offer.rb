class Offer < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :user, presence: true
  validates :subject, presence: true
  validates :level, presence: true, inclusion: { in: %w[beginner intermediate advanced] }
  validates :price, presence: true, numericality: { only_float: true, greater_than: 0 }
  validates :description, presence: true
end
