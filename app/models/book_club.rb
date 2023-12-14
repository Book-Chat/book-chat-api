class BookClub < ApplicationRecord
  validates :name, presence: true
  validates :status, presence: true
  enum :status, { open_public: 0, invite_private: 1, inactive: 2 }

  has_many :book_club_subjects
  has_many :subjects, through: :book_club_subjects
  has_many :meetings
  has_many :book_club_books
  has_many :books, through: :book_club_books
  has_many :book_club_users
  has_many :users, through: :book_club_users
end
