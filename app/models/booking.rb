class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :buddy

  validates :date, :request_message, presence: true
  validates :request_message, length: { minimum: 30 }
end
