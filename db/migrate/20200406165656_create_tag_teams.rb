class CreateTagTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_teams do |t|
      t.string :name, null: false, index: { unique: true }
      t.belongs_to :stable
      t.string :nickname
      t.string :image_url
      t.timestamps
    end
  end
end
