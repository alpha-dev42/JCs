class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  after_create_commit { CommentUpdateJob.perform_later(self, self.user) }

  # method for selecting comment with highest rating
  scope :rating_desc, -> { order(rating: :desc) }

  # method for reverser order lowest rating
  scope :rating_asc, -> { order(rating: :asc) }

end
