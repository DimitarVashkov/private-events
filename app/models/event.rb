class Event < ApplicationRecord
  # association between event creator and the event -> creator assoc
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :invitations, foreign_key: :event_id, dependent: :destroy
  has_many :attendees, through: :invitations, source: :attendee

  scope :future, -> { where("date > ?", Time.zone.now) }
  scope :past, -> { where("date < ?", Time.zone.now) }
end
