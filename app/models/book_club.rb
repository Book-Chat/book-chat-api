class BookClub < ApplicationRecord
  validates :name, presence: true
  validates :status, presence: true
  enum :status, { open_public: 0, invite_private: 1, inactive: 2 }
end
