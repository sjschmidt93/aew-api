class Reign < ApplicationRecord
  validates :start_date, presence: true
  validate :cannot_be_multiple_champions

  scope :active, -> { where(end_date: nil) }

  def length
    return (end_date - start_date).to_i unless end_date.nil?
    (Date.today - start_date).to_i
  end

  def cannot_be_multiple_champions
    if end_date.nil? && !Reign.find_by(championship: championship, end_date: nil).nil?
      errors.add(:end_date, "Can't have multiple champions")
    end
  end
  
  belongs_to :championship
  belongs_to :competitor, polymorphic: true
end
