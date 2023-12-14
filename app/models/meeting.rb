class Meeting < ApplicationRecord
  belongs_to :book_club
  has_one :book_club_book
  has_one :book, through: :book_club_book
end
