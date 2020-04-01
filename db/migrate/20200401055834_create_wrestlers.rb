class CreateWrestlers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrestlers do |t|
      t.string :name

      t.timestamps
    end
  end
end
