class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.date :date, null: false
      t.string :city, null: false
      t.string :venue, null: false

      t.string :winner_ids, default: [].to_yaml

      t.integer :match_type, default: 0
      t.integer :finish_type, default: 0

      t.timestamps
    end
  end
end
