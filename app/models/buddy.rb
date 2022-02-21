class Buddy < ApplicationRecord
  has_many :bookings

  validates :name, :age, :gender, :city, :biography, :hobby, :language, presence: true
  validates :biography, length: { minimum: 150 }
  validates :age, numericality: { only_integer: true }
end
