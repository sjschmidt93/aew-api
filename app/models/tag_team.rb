class TagTeam < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :tag_team_memberships
  has_many :wrestlers, through: :tag_team_memberships

  has_many :tag_team_stable_memberships
  has_many :stables, through: :tag_team_stable_memberships

  has_many :sides, as: :competitor
  has_many :matches, through: :sides
  
  has_many :reigns, as: :competitor

  has_many :sub_team_memberships, foreign_key: 'parent_team_id', class_name: 'TagTeamSubTeamMembership'
  has_many :sub_teams, through: :sub_team_memberships, source: :sub_team

  has_many :parent_team_memberships, foreign_key: 'sub_team_id', class_name: 'TagTeamSubTeamMembership'
  has_many :parent_teams, through: :parent_team_memberships, source: :parent_team

  scope :official, -> { where(is_official: true) }
  
  # def matches

  # end

  def matches_as_sub_team
    parent_teams.map(&:matches)
  end

  def num_wins
    wins.count
  end

  def num_losses
    losses.count
  end

  def wins
    matches.select { |match| match.winning_side.competitor_id == id }
  end

  def losses
    matches.select { |match| match.winning_side.competitor_id != id }
  end
end
