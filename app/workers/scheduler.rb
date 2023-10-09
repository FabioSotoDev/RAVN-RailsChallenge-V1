require 'sidekiq-scheduler'

class Scheduler
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    last_week = Date.today - 7
    users = ::User.where(last_capture: lt(last_week))

    users.each do |user|
      InactiveMailer.with(user: user).send_inactive.deliver_later
    end
  end
end
