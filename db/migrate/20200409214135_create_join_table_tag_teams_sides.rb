class CreateJoinTableTagTeamsSides < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tag_teams, :sides do |t|
      t.index [:tag_team_id, :side_id]
      t.index [:side_id, :tag_team_id]
    end
  end
end
