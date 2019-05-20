class User < ApplicationRecord
	has_many :contacts
	has_many :posts
	has_many :comments, as: :commentable

	def self.pagination_request(page)
    	paginate :per_page => 10, :page => page
  	end
end
