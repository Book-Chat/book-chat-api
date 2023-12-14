class Book < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  validates :google_id, presence: true

  has_many :book_club_books
  has_many :book_clubs, through: :book_club_books
end
