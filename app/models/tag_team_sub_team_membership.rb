class TagTeamSubTeamMembership < ApplicationRecord
  belongs_to :parent_team, foreign_key: 'parent_team_id', class_name: 'TagTeam'
  belongs_to :sub_team, foreign_key: 'sub_team_id', class_name: 'TagTeam'
end
