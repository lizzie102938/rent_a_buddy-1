class Buddy < ApplicationRecord
  has_many :bookings

  validates :name, :age, :gender, :city, :biography, :hobby, :language, presence: true
  validates :biography, length: { minimum: 150 }
  validates :age, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :search_by_city_and_hobby,
    against: [ :city, :hobby ],
    using: {
      tsearch: { prefix: true }
    }
end
