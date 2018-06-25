class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # method for selecting comment with highest rating
  scope :rating_desc, -> { order(rating: :desc) }

  # method for reverser order lowest rating
  scope :rating_asc, -> { order(rating: :asc) }

end
