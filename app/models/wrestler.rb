class Wrestler < ApplicationRecord
  validates :name, uniqueness: true
  
  # has_and_belongs_to_many :matches, through: :sides
  has_and_belongs_to_many :tag_teams
  #has_many_matches, through: :tag_teams
  has_many :reigns
  has_and_belongs_to_many :sides
  has_many :matches, through: :sides

  enum division: [:mens, :womens]
  
  def wins
    matches.select do |match|
      if match.is_tag?
        match.winning_team.include?(name)
      else
        match.winner == name
      end
    end.count
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
