class Customer < ApplicationRecord
	has_secure_password
	validates :name, :presence => true
	validates :name, uniqueness:true
	validates :email, :presence => true
	validates :email, uniqueness:true
end
