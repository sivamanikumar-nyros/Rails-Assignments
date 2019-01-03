class Customer < ApplicationRecord
	has_secure_password
	validates :name, :presence => true
	validates :name, uniqueness:true
	validates :email, :presence => true
	validates :email, uniqueness:true

	def set_customer
		sleep 10
		update_attribute(:delivered_at, Time.zone.now)
	end
end
