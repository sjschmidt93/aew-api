class Event < ApplicationRecord
  validates :name, :date, :city, :venue, presence: true
  has_many :matches
  enum event_type: [:tv, :ppv, :internet]
end
