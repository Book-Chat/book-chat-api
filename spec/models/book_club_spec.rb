require 'rails_helper'

RSpec.describe BookClub, type: :model do
  describe "validations" do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :status }
  end

  describe "associations" do 
    it { should have_many :book_club_subjects }
    it { should have_many(:subjects).through(:book_club_subjects)}
    it { should have_many :meetings }
    it { should have_many :book_club_books }
    it { should have_many(:books).through(:book_club_books)}
    it { should have_many :book_club_users }
    it { should have_many(:users).through(:book_club_users)}
  end
end
