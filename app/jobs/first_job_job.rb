class FirstJobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts args
    puts *args
    CustomerMailer.signup_confirmation(*args).deliver
  end
  
end
