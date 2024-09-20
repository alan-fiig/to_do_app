class UpdateStatusJob < ApplicationJob
  queue_as :default

  def perform(id)
    user = User.find(id)

    if user.persisted?
      user.update(status: 'registered')
    else
      user.update(status: 'error')
    end
  end
end
