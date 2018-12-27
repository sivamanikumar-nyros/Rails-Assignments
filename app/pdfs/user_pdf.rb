class UserPdf < Prawn::Document
	def initialize(user)
		super(top_margin: 70)
			@user = user
			name
	end
	def name

		text "UserName: #{@user.name}",size: 20
		text "Gender: #{@user.gender}",size: 20
		text "State: #{@user.address.state}",size: 20
		text "City: #{@user.address.city}",size: 20
		text "Street: #{@user.address.street}",size: 20
		text "Doornumber: #{@user.address.doornumber}",size: 20
		text "Enabled: #{@user.enabled}",size: 20
		
	end
end