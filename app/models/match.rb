class Match < ApplicationRecord
  serialize :winner_ids, Array
  validates :date, :city, :venue, presence: true

  enum match_type: [:singles, :tag]
  enum finish_type: [:normal, :no_contest, :draw]

  has_and_belongs_to_many :wrestlers
end
