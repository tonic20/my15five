class Report < ActiveRecord::Base
  scope :latest, -> {
    order(week_date: :desc).limit(1)
  }

  belongs_to :user
  has_many :answers

  validates :user_id, :week_date, presence: true
end