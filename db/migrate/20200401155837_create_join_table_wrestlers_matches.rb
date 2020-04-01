class CreateJoinTableWrestlersMatches < ActiveRecord::Migration[6.0]
  def change
    create_join_table :wrestlers, :matches do |t|
      t.index [:wrestler_id, :match_id]
      t.index [:match_id, :wrestler_id]
    end
  end
end
