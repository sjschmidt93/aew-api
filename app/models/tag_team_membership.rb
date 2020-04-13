class TagTeamMembership < ApplicationRecord
  belongs_to :wrestler
  belongs_to :tag_team
end
