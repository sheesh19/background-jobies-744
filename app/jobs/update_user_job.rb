class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Enriching our user with Clearbit API"
    # getting info back from Clearbit API
    sleep 4
    puts "Done! Our user: #{user.email} is updated."
  end
end
