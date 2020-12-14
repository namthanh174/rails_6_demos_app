require 'rails_helper'

RSpec.describe Sight, type: :model do
  describe "#valid?" do
    it "should validate activity type correctly" do
      sight = Sight.new(place: Place.new)
      sight.activity_type = "unknown"
      expect(sight).not_to be_valid
      ["checkin", "checkout"].each do |type|
        sight.activity_type = type
        expect(sight).to be_valid
      end
    end
  end
end
