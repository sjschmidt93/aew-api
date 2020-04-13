class StableMembership < ApplicationRecord
  belongs_to :wrestler
  belongs_to :stable
end
