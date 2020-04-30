class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, :city, :venue, presence: true
  has_many :matches
  enum program: [:dynamite, :ppv, :dark]
end
