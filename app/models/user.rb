class User < ApplicationRecord
	has_one :address
	accepts_nested_attributes_for :address
	has_and_belongs_to_many :reviews, join_table: "users_reviews"
end
