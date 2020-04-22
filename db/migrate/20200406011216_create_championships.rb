class CreateChampionships < ActiveRecord::Migration[6.0]
  def change
    create_table :championships do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :image_url
      t.timestamps
    end
  end
end
