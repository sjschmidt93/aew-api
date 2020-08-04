class TagTeam < ApplicationRecord
  validates :name,
            presence: true,
            if: :needs_name?

  validates :name,
            uniqueness: true,
            if: :needs_name?

  
  has_many :tag_team_memberships
  has_many :wrestlers, through: :tag_team_memberships

  has_many :tag_team_stable_memberships
  has_many :stables, through: :tag_team_stable_memberships

  has_many :sides, as: :competitor
  has_many :matches, through: :sides
  
  has_many :reigns, as: :competitor

  enum naming_convention: [:team, :wrestlers, :both]

  scope :official, -> { where(is_official: true) }

  def needs_name?
    naming_convention != 'wrestlers'
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
