class Stable < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :tag_team_stable_memberships
  has_many :stable_memberships

  def matches
    singles_matches + tag_team_matches
  end

  def singles_matches
    wrestlers.map(&:matches).flatten(1)
  end

  def tag_team_matches
    tag_teams.map(&:matches).flatten(1)
  end
end
