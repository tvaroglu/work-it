require 'rails_helper'

RSpec.describe GifSenderWorker do
  it 'can push a job to queue' do
    expect(GifSenderWorker.jobs.size).to eq 0

    GifSenderWorker.perform_async('test@test.com', 'hello')

    expect(GifSenderWorker.jobs.size).to eq 1
  end
end
