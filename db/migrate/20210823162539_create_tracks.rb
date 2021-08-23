class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :track_type, null: false
      t.float :length, null: false
      t.integer :corners
      t.string :description, null: false

      t.timestamps
    end
  end
end