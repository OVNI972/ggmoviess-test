class Category < ApplicationRecord
  belongs_to :movie
  has_many :lists, through: :category
  # validates :comment, lenght: { minimum: 6 }

  validates :movie_id, uniqueness: {scope: :list_id, message: "est déjà dans la liste"}
end
