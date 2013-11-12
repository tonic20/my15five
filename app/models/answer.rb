class Answer < ActiveRecord::Base
  belongs_to :report
  belongs_to :question

  validates :body, :question_id, presence: true
  validates_associated :report
end