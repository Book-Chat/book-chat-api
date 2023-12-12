class BookClubSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :book_club
end
