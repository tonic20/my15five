class Answer < ActiveRecord::Base
  belongs_to :report
  belongs_to :question

  validates :body, :question_id, presence: true
  validates_associated :report

  scope :weekly, ->(user) {
    joins(:report).
    where(reports: {week_date: DateTools.current_friday})
    # todo: implement users filter by company
  }
end