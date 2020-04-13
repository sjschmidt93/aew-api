class Championship < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :reigns

  def current_champion
    reigns.find_by(end_date: nil).competitor
  end
end
