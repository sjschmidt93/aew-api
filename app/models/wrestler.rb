class Wrestler < ApplicationRecord
  validates :name, uniqueness: true
  
  has_and_belongs_to_many :tag_teams
  has_many :reigns
  has_many :sides, as: :competitor
  has_many :matches, through: :sides

  enum division: [:mens, :womens]

  def all_matches
    matches + tag_team_matches
  end

  def tag_team_matches
    tag_teams.map(&:matches).flatten(1)
  end
  
  def wins
  end

  def singles_wins
    matches.select { |match| match.winning_side.competitor_id == id }
  end

  def losses
    matches.select do |match|
      if match.is_tag?
        !match.winning_team.include?(name)
      else
        match.winner != name
      end
    end.count
  end

  def draws
    matches.where(finish_type: :draw).count
  end

  def no_contests
    matches.where(finish_type: :no_contest).count
  end
end
