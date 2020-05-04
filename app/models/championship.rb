class Championship < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :reigns, -> { order "reigns.end_date, reigns.start_date" }
  has_many :matches

  def current_champion
    reigns.find_by(end_date: nil).competitor
  end
end
