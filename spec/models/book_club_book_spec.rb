require 'rails_helper'

RSpec.describe BookClubBook, type: :model do
  describe "associations" do 
    it { should belong_to :book }
    it { should belong_to :book_club }
    it { should belong_to :meeting }
  end
end

