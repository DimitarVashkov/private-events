class User < ApplicationRecord
  has_many :events, foreign_key: :user_id
  has_many :invitations, foreign_key: :attendee_id, dependent: :destroy
  has_many :attended_events, through: :invitations, source: :event
end
