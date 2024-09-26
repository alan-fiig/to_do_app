class User < ApplicationRecord
  after_create :enqueue_update_status_job

  private

  def enqueue_update_status_job
    UpdateStatusJob.perform_later(self.id)
    #UpdateStatusJob.set(wait: 10.seconds).perform_later(self.id)
  end

end
