class FirstJobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts args
    puts *args
  end
  
end
