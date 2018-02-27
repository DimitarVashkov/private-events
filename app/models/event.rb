class Event < ApplicationRecord
  # association between event creator and the event -> creator assoc
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
end
