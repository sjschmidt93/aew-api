class Match < ApplicationRecord
  belongs_to :event
  has_many :sides
  has_many :wrestlers, through: :sides, source: :competitor, source_type: 'Wrestler'
  has_many :tag_teams, through: :sides, source: :competitor, source_type: 'TagTeam'
  has_one :winning_side, :class_name => "Side"

  def all_wrestlers
    wrestlers.concat(tag_teams.map(&:wrestlers))
  end

  def winners
    winning_side.wrestlers
  end

  def is_handicap?
    sides.any? { |side| side.wrestlers.count != sides[0].wrestlers.count }
  end
  
  enum match_type: [:singles, :tag, :cage, :battle_royal]
  enum finish_type: [:pin, :submision, :dq, :count_out, :draw]
end
