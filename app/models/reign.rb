class Reign < ApplicationRecord
  validates :start_date, presence: true
  
  belongs_to :championship
  belongs_to :competitor, polymorphic: true
end
