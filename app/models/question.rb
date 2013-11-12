class Question < ActiveRecord::Base
  default_scope { order(:position) }

  validates :subject, :position, presence: true
end