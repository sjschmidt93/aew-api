class TagTeam < ApplicationRecord
  validates :name, presence: true
  
  has_and_belongs_to_many :wrestlers
  has_and_belongs_to_many :matches
  has_many :reigns
end
