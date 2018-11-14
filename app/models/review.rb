class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: true
  validates :rating, inclusion: { in: (0..5) }
  validates :content, presence: true
  validates :rating, presence: true
end
