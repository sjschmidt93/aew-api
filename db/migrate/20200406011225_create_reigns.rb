class CreateReigns < ActiveRecord::Migration[6.0]
  def change
    create_table :reigns do |t|
      t.date :start_date, null: false
      t.date :end_date
      t.belongs_to :championship
      t.belongs_to :wrestler
      t.belongs_to :tag_team
      t.timestamps
    end
  end
end
