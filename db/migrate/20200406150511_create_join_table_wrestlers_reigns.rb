class CreateJoinTableWrestlersReigns < ActiveRecord::Migration[6.0]
  def change
    create_join_table :wrestlers, :reigns do |t|
      t.index [:wrestler_id, :reign_id]
      t.index [:reign_id, :wrestler_id]
    end
  end
end
