class Event < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :date, :city, :venue, presence: true
  has_many :matches
  enum event_type: [:tv, :ppv, :internet, :house_show]
end
