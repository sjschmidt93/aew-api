class Championship < ApplicationRecord
  has_many :reigns

  def current_reign
    reigns.find_by(end_date: nil)
  end

  def current_champion
    current_reign.wrestler
  end

  def tag_title?
    reigns[0].wrestlers.length > 1
  end
end
