require 'rails_helper'

RSpec.describe Subject, type: :model do
  describe "validations" do 
    it { should validate_presence_of :category }
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
  end

  describe "associations" do 
    it { should have_many :book_club_subjects }
    it { should have_many(:book_clubs).through(:book_club_subjects) }
  end
end
