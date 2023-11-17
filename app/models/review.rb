class Review < ApplicationRecord
  belongs_to :restaurant
  # validates :name, presence: true
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: {in: (0..5).to_a, message: "%{value} is not a valid integer"}
  validates :rating, numericality: { only_integer: true }
  # validates :category, inclusion: { in: %w(chinese italian japanese french belgian, message: "%{value} is not a valid category")};
end
