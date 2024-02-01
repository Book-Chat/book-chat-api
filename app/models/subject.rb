class Subject < ApplicationRecord
  validates :type, presence: true
  validates :name, presence: true
  validates :description, presence: true

  enum type: { genre: 0, special_interest: 1, taste: 2 }
  has_many :book_club_subjects
  has_many :book_clubs, through: :book_club_subjects
end
