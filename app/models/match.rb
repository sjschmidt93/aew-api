class Match < ApplicationRecord
  belongs_to :event
  has_many :sides
  has_many :wrestlers, through: :sides, source: :competitor, source_type: 'Wrestler'
  has_many :tag_teams, through: :sides, source: :competitor, source_type: 'TagTeam'
  belongs_to :winning_side, :class_name => "Side"

  def all_wrestlers
    wrestlers + tag_teams.map(&:wrestlers).flatten(1)
  end

  def is_singles?
    tag_teams.count == 0
  end

  def is_tag?
    wrestlers.count == 0
  end

  def is_handicap?
    wrestlers.count > 0 && tag_teams.count > 0
  end
  
  enum match_type: [:singles, :tag, :cage, :battle_royal]
  enum finish_type: [:pin, :submision, :dq, :count_out, :draw]
end
