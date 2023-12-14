class Subject < ApplicationRecord
  validates :type, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
