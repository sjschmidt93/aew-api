class CreateTagTeamSubTeamMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_team_sub_team_memberships do |t|
      t.belongs_to :parent_team, class_name: 'TagTeam'
      t.belongs_to :sub_team, class_name: 'TagTeam'
      t.timestamps
    end
  end
end
