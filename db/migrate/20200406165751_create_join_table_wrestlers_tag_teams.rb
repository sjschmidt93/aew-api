class CreateJoinTableWrestlersTagTeams < ActiveRecord::Migration[6.0]
  def change
    create_join_table :wrestlers, :tag_teams do |t|
      t.index [:wrestler_id, :tag_team_id]
      t.index [:tag_team_id, :wrestler_id]
    end
  end
end
