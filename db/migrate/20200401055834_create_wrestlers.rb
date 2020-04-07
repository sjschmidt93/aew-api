class CreateWrestlers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrestlers do |t|
      t.string :name, null: false
      t.string :nickname
      t.string :image_url
      t.timestamps
    end
  end
end
