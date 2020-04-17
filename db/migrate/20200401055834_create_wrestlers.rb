class CreateWrestlers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrestlers do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :nickname
      t.integer :height
      t.integer :weight
      t.string :hometown
      t.integer :division, default: 0
      t.string :image_url
      t.timestamps
    end
  end
end
