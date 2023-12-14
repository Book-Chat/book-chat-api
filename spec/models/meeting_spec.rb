require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe "associations" do 
    it { should belong_to :book_club }
    it { should have_one :book_club_book }
    it { should have_one(:book).through(:book_club_book)}
  end

  describe "validations" do 
    it { should validate_presence_of :date_time }
    it { should validate_presence_of :location }
  end
end
