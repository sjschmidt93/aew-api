class Wrestler < ApplicationRecord
  has_and_belongs_to_many :matches
  has_and_belongs_to_many :tag_teams
  has_many :reigns
  
  def wins
    matches.select do |match|
      if match.is_tag?
        match.winning_team.include?(name)
      end
      match.winner == name
    end.count
  end

  def losses
    matches.select do |match|
      if match.is_tag?
        !match.winning_team.include?(name)
      end
      match.winner != name
    end.count
  end

  def draws
    matches.where(finish_type: :draw).count
  end

  def no_contests
    matches.where(finish_type: :no_contest).count
  end
end
