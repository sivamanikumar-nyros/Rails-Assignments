class CustomerMailer < ApplicationMailer
	default from: "siva.nyros@gmail.com"

  
  def signup_confirmation(customer)
    @customer = customer

    mail to: customer.email, subject:  "Sign Up Confirmation"
  end
end
