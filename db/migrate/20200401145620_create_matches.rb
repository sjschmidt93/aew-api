class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.belongs_to :event
      t.belongs_to :winning_side, foreign_key: { to_table: 'sides' }
      t.integer :finish_type, default: 0
      t.timestamps
    end
  end
end
