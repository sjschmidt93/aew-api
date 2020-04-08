class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.belongs_to :event
      t.integer :winner_index
      t.integer :match_type, default: 0
      t.integer :finish_type, default: 0
      t.timestamps
    end
  end
end
