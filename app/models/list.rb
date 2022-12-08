class List < ApplicationRecord
  has_many :category, dependent: :destroy
  has_many :movies, through: :category, dependent: :destroy
  has_one_attached :photo

  # has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
