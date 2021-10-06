class GifSenderJob < ApplicationJob
  queue_as :urgent

  def perform(email, thought)
    UserNotifierMailer.send_randomness_email(email, thought).deliver_now
  end
end
