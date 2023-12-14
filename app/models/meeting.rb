class Meeting < ApplicationRecord
  belongs_to :book_club
  has_one :book_club_book
  has_one :book, through: :book_club_book

  validates :date_time, presence: true
  validates :location, presence: true
end
