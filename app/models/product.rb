class Product < ApplicationRecord
	validates :name, presence: true
	has_many :orders
	has_many :comments

	def self.search(search_term)
  	like_string = Rails.env.production? ? "ilike" : "LIKE"
    Product.where("name #{like_string} ?", "%#{search_term}%")
	end

	# method for returning highest rating comment
  def highest_rating_comment
  comments.rating_desc.first&.rating
	end

	# method for returning highest rating comment
  def lowest_rating_comment
  comments.rating_asc.first&.rating
	end

	def average_rating
	  comments.average(:rating).to_f
	end
end
