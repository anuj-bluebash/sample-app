class UserJob < ApplicationJob
  queue_as :default

  def perform(date)
    User.first.update(name: "updated at-"+date)
  end

end
