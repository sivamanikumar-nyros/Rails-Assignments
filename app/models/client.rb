class Client < ApplicationRecord
	include Clearance::User
  has_many :messages, dependent: :destroy
end
