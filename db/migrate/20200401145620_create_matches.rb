class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.belongs_to :event
      t.belongs_to :winning_side, class_name: 'Side'
      t.integer :finish_type, default: 0
      t.belongs_to :championship, optional: true
      t.timestamps
    end
  end
end
