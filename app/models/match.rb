class Match < ApplicationRecord
  belongs_to :event
  has_many :sides
  has_many :wrestlers, through: :sides
  #has_many :managers, through: :sides, foreign_key: "manager_id"
  has_one :winning_side, :class_name => "Side"

  def winners
    winning_side.wrestlers
  end

  def is_handicap?
    sides.any? { |side| side.wrestlers.count != sides[0].wrestlers.count }
  end
  
  enum match_type: [:singles, :tag, :cage, :battle_royal]
  enum finish_type: [:pin, :submision, :dq, :count_out, :draw]
end
