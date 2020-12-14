class Sight < ApplicationRecord
  ACTIVITY_TYPES = [
    CHECKIN = "checkin",
    CHECKOUT = "checkout"
    ].freeze
  belongs_to :place
  validates :activity_type, presence: true
  validates :activity_type, inclusion: { in: ACTIVITY_TYPES }
end
