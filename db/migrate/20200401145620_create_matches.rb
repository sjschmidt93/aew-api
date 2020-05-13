class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.belongs_to :event
      t.belongs_to :side
      t.integer :finish_type, default: 0
      t.belongs_to :championship, optional: true
      t.timestamps
    end
  end
end
