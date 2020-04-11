class CreateJoinTableWrestlersStables < ActiveRecord::Migration[6.0]
  def change
    create_join_table :wrestlers, :stables do |t|
      t.index [:wrestler_id, :stable_id]
      t.index [:stable_id, :wrestler_id]
    end
  end
end
