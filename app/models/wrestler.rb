class Wrestler < ApplicationRecord
  has_and_belongs_to_many :matches
  has_one_attached :image
  
  def wins
    # TODO: do this in a more SQL-y way?
    matches.select{|match| id.in?(match.winner_ids) }.count
  end

  def losses
    matches.select{|match| !id.in?(match.winner_ids) }.count
  end

  def draws
    matches.where(finish_type: :draw).count
  end

  def no_contests
    matches.where(finish_type: :no_contest).count
  end
end
