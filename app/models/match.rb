class Match < ApplicationRecord
  belongs_to :event
  has_many :sides
  has_many :wrestlers, through: :sides, source: :competitor, source_type: 'Wrestler'
  has_many :tag_teams, through: :sides, source: :competitor, source_type: 'TagTeam'
  belongs_to :winning_side, :class_name => "Side"
  belongs_to :championship, optional: true

  default_scope { includes(:event).order('events.date DESC') }

  def winner
    winning_side.competitor.name
  end

  def all_wrestlers
    wrestlers + tag_teams.map(&:wrestlers).flatten(1)
  end

  def type
    # return "handicap" if wrestlers.count > 0 && tag_teams.count > 0
    return "singles" if tag_teams.count == 0
    "tag"
  end

  #enum stipulation
  enum finish_type: [:pin, :submision, :dq, :count_out, :draw]
end
