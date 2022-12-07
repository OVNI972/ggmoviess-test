class Movie < ApplicationRecord
  has_many :category

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
