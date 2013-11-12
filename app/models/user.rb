class User < ActiveRecord::Base
  ROLES = %w{manager user admin}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reports
  belongs_to :company

  validates :role, presence: true

  def admin?
    role == 'admin'
  end

  def find_or_build_current_report
    current = reports.latest.first
    friday = DateTools.current_friday
    if current && current.week_date == friday
      current
    else
      reports.new(week_date: friday)
    end
  end
end