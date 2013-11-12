class Report < ActiveRecord::Base
  scope :latest, ->(user) {
    where(user_id: user.id).order(id: :desc).limit(1)
  }
end