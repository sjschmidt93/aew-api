class CreateSides < ActiveRecord::Migration[6.0]
  def change
    create_table :sides do |t|
      t.belongs_to :match
      t.timestamps
    end
  end
end
