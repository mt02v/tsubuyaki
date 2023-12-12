class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { in: 1..140 }
end
