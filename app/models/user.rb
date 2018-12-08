class User < ApplicationRecord
	has_one :address
	accepts_nested_attributes_for :address
	has_many :checkouts
end
