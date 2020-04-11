class TagTeam < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :sides, as: :competitor
  has_many :matches, through: :sides
  has_and_belongs_to_many :wrestlers
  has_many :reigns

  def wins
    matches.select { |match| match.winning_side.competitor_id == id }
  end
end
