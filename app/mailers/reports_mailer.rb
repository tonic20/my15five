class ReportsMailer < ActionMailer::Base
  default from: "support@my15five.com"

  def weekly_report_email(user)
    @user = user
    @questions = Question.all

    mail(to: @user.email, subject: 'Weekly Reports')
  end
end
