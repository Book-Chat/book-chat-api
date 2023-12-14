require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "validations" do 
    it { should validate_presence_of :author }
    it { should validate_presence_of :title }
    it { should validate_presence_of :google_id }
  end

  describe "associations" do 
    it { should have_many :book_club_books }
    it { should have_many(:book_clubs).through(:book_club_books)}
  end
end

