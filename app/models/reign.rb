class Reign < ApplicationRecord
  validates :start_date, presence: true
  
  belongs_to :championship
  has_and_belongs_to_many :wrestlers
end
