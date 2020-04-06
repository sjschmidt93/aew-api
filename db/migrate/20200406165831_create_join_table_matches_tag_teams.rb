class CreateJoinTableMatchesTagTeams < ActiveRecord::Migration[6.0]
  def change
    create_join_table :matches, :tag_teams do |t|
      t.index [:match_id, :tag_team_id]
      t.index [:tag_team_id, :match_id]
    end
  end
end
