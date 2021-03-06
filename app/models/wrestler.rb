class Wrestler < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :tag_team_memberships
  has_many :tag_teams, through: :tag_team_memberships
  has_many :stable_memberships
  has_many :stables, through: :stable_memberships

  has_many :reigns, as: :competitor
  has_many :sides, as: :competitor
  has_many :matches, through: :sides

  default_scope { order('name') }

  enum division: [:mens, :womens]

  def current_championships
    reigns.active.map(&:championship)
  end

  def all_matches
    matches + tag_team_matches
  end

  def tag_team_matches
    tag_teams.map(&:matches).flatten(1)
  end

  def num_wins
    wins.count
  end

  def num_losses
    losses.count
  end

  def num_singles_wins
    singles_win.count
  end

  def num_singles_losses
    singles_losses.count
  end

  def wins
    singles_wins + tag_teams.map(&:wins).flatten(1)
  end

  def losses
    singles_losses + tag_teams.map(&:losses).flatten(1)
  end
  
  def singles_wins
    matches.select { |match| match.winning_side.competitor_id == id }
  end

  def singles_losses
    matches.select { |match| match.winning_side.competitor_id != id }
  end

  def draws
    matches.where(finish_type: :draw)
  end

  def no_contests
    matches.where(finish_type: :no_contest)
  end
end
