require 'rails_helper'

RSpec.describe GifSenderJob do
  it 'can send an email' do
    GifSenderJob.perform_now("test@test.com", "hello")
    # GifSenderJob.perform_async("test@test.com", "hello")
    # literally no idea what to assert here...
    # assert
  end
end
