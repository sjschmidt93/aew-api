class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.string :city, null: false
      t.string :venue, null: false
      t.integer :program, default: 0
      t.string :image_url
      t.timestamps
    end
  end
end
