class Wrestler < ApplicationRecord
  has_and_belongs_to_many :matches
  has_one_attached :image
end
