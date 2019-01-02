class CustomerMailer < ApplicationMailer
	default from: "siva.nyros@gmail.com"

  
  def signup_confirmation(customer)
    @customer = customer
	attachments.inline["article.jpg"] = File.read("#{Rails.root}/app/assets/images/article.jpg")
    mail to: customer.email, subject:  "Sign Up Confirmation"

  end
end
