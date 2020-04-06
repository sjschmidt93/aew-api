class CreateTagTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_teams do |t|
      t.string :name, null: false
      t.string :nickname
      t.timestamps
    end
  end
end
