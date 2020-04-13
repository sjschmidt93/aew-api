class CreateStableMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :stable_memberships do |t|
      t.belongs_to :stable
      t.belongs_to :wrestler
      t.timestamps
    end
  end
end
