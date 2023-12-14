require 'rails_helper'

RSpec.describe BookClubUser, type: :model do
  describe "associations" do 
    it { should belong_to :user }
    it { should belong_to :book_club }
  end

  describe "validations" do 
    it { should validate_presence_of :role }
  end
end
