class BookClubUser < ApplicationRecord
  belongs_to :user
  belongs_to :book_club

  validates :role, presence: true
  enum :role, { member: 0, owner: 1, collaborator: 2 }
end
