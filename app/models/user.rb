class User < ApplicationRecord
  has_many :events, foreign_key: :user_id
end
