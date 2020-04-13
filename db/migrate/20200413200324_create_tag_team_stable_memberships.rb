class CreateTagTeamStableMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_team_stable_memberships do |t|
      t.belongs_to :tag_team
      t.belongs_to :stable
      t.timestamps
    end
  end
end
