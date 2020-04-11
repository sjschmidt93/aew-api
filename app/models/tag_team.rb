class TagTeam < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  belongs_to :stable
  has_many :sides, as: :competitor
  has_many :matches, through: :sides
  has_many :reigns, as: :competitor
  has_and_belongs_to_many :wrestlers

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
