class BookClubBook < ApplicationRecord
  belongs_to :book
  belongs_to :book_club
  belongs_to :meeting
end
