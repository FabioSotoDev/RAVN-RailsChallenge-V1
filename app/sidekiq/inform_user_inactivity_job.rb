class InformUserInactivityJob < ApplicationJob
  include Sidekiq::Job

  def perform(*args)
    last_week = Date.today.last_week
    users = User.where(last_capture: lt(last_week))

    users.each do |user|
      InactiveMailer.with(user: user).send_inactive.deliver_later
    end
  end
end
