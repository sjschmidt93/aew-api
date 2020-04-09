class Side < ApplicationRecord
  belongs_to :match

  has_and_belongs_to_many :wrestlers
 #has_and_belongs_to_many :tag_teams
  #has_many :wrestlers, through: tag_teams
end
