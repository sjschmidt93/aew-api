class CreateJoinTableWrestlersSides < ActiveRecord::Migration[6.0]
  def change
    create_join_table :wrestlers, :sides do |t|
      t.index [:wrestler_id, :side_id]
      t.index [:side_id, :wrestler_id]
    end
  end
end
