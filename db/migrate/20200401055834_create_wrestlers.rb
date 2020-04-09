class CreateWrestlers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrestlers do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :nickname
      t.string :image_url
      t.integer :divison, default: 0
      t.timestamps
    end
  end
end
