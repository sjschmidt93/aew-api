class Match < ApplicationRecord
  serialize :winner_ids, Array

  belongs_to :event
  has_and_belongs_to_many :wrestlers
  has_and_belongs_to_many :tag_teams

  enum match_type: [:singles, :tag, :six_man_tag, :cage, :battle_royal]
  enum finish_type: [:normal, :no_contest, :draw]
end
