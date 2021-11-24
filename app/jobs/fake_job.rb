class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "Performing the fake job now"
    sleep 4
    puts "FINISHED!!!!!!!!!!!!!!!!!!!"
  end
end


# perform_now()
# peform_later()
