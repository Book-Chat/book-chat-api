require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do 
    it { should validate_presence_of :username }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
    it { should validate_presence_of :password_digest }
    it { should validate_presence_of :password_confirmation }
    it { should validate_uniqueness_of :username }
  end

  describe "associations" do 
    it { should have_many :book_club_users }
    it { should have_many(:book_clubs).through(:book_club_users)}
    it { should have_many :user_books }
    it { should have_many(:books).through(:user_books)}
  end
end
