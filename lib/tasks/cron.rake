namespace :cron do
  desc "Send weekly reports on every friday"
  task :send_weekly_reports => :environment do
    User.send_weekly_reports
  end
end