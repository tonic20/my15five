class Answer < ActiveRecord::Base
  belongs_to :report

  validates :body, :report_id, presence: true
end