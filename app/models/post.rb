class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, as: :commentable

	def self.pagination_request(page)
    paginate :per_page => 10, :page => page
  end
end
