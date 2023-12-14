require 'rails_helper'

RSpec.describe BookClubSubject, type: :model do
  describe "associations" do 
    it { should belong_to :subject }
    it { should belong_to :book_club }
  end
end

