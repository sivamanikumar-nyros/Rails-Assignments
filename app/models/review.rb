class Review < ApplicationRecord
	has_and_belongs_to_many :users, join_table: "users_reviews"
end
