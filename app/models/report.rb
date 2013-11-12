class Report < ActiveRecord::Base
  scope :sorted, -> { order(week_date: :desc) }
  scope :latest, -> { sorted.limit(1) }

  belongs_to :user
  has_many :answers

  validates :user_id, :week_date, presence: true

  accepts_nested_attributes_for :answers
end