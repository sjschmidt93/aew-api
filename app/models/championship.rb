class Championship < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :reigns
end
