class Contact < ApplicationRecord
	belongs_to :user

	def self.pagination_request(page)
    paginate :per_page => 10, :page => page
  end
end
