class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.date :date

      t.timestamps
    end
  end
end
