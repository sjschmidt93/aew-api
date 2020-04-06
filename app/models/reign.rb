class Reign < ApplicationRecord
  validates :start_date, presence: true
  
  belongs_to :championship
  belongs_to :wrestler, optional: true
  belongs_to :tag_team, optional: true
end
