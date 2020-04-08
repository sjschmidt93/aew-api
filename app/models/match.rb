class Match < ApplicationRecord
  belongs_to :event
  has_and_belongs_to_many :wrestlers
  has_and_belongs_to_many :tag_teams

  enum match_type: [:singles, :tag, :cage, :battle_royal]
  enum finish_type: [:normal, :no_contest, :draw]

  def winner
    return nil if is_tag?
    wrestlers[winner_index].name
  end

  def winning_team
    return nil unless is_tag?
    tag_teams[winner_index].wrestlers.pluck(:name)
  end

  def is_tag?
    match_type == "tag"
  end
end
