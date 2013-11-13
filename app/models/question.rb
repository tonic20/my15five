class Question < ActiveRecord::Base
  default_scope { order(:position) }

  has_many :answers

  validates :subject, :position, presence: true
end