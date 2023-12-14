class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
  validates :password_digest, presence: true

  has_secure_password
end
