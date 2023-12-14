require 'rails_helper'

RSpec.describe UserBook, type: :model do
  describe "associations" do 
    it { should belong_to :user }
    it { should belong_to :book }
  end
end
