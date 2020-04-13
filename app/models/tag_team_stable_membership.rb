class TagTeamStableMembership < ApplicationRecord
  belongs_to :tag_team
  belongs_to :stable
end
