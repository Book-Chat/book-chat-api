require 'rails_helper'

RSpec.describe BookClub, type: :model do
  describe "validations" do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :status }
  end
end