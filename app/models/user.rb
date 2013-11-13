class User < ActiveRecord::Base
  ROLES = %w{manager user admin}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reports
  belongs_to :company

  validates :role, presence: true

  scope :managers, -> { where(role: 'manager') }

  def admin?
    role == 'admin'
  end

  def manager?
    role == 'manager'
  end

  def find_or_build_current_report
    current = reports.latest.first
    friday = DateTools.current_friday
    if current && current.week_date == friday
      current
    else
      current = reports.new(week_date: friday)
      Question.all.each do |q|
        current.answers.new(question_id: q.id)
      end
      current
    end
  end

  def self.send_weekly_reports
    User.managers.find_each do |u|
      ReportsMailer.weekly_report_email(u).deliver
    end
  end
end